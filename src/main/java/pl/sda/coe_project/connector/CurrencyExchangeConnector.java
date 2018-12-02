package pl.sda.coe_project.connector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.math.BigDecimal;
import java.util.Optional;

@Component
public class CurrencyExchangeConnector {

    private static final String REQREST_URL = "https://free.currencyconverterapi.com/api/v6/convert";

    private final RestTemplate restTemplate;

    @Autowired
    public CurrencyExchangeConnector(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public BigDecimal connect(String currencyFrom, String currencyTo) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Accept", MediaType.APPLICATION_JSON_VALUE);

        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(REQREST_URL)
                .queryParam("q", currencyFrom + "_" + currencyTo)
                .queryParam("compact", "ultra");

        HttpEntity<?> entity = new HttpEntity<>(headers);

        ResponseEntity<String> result = restTemplate.exchange(
                builder.toUriString(),
                HttpMethod.GET,
                entity,
                String.class);

        String body = Optional.ofNullable(result.getBody()).orElse("{'CURRENCY':1}");

        return new BigDecimal(getRateFromResult(body));
    }

    private String getRateFromResult(String body) {
        return body.substring(body.indexOf(':') + 1, body.indexOf("}"));
    }
}
