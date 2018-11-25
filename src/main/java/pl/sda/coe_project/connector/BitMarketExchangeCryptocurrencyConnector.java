package pl.sda.coe_project.connector;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import pl.sda.coe_project.exchanger.BitMarketExchangeCryptocurrency;

import java.util.HashMap;
import java.util.Map;

@Component
public class BitMarketExchangeCryptocurrencyConnector {
    private static final String REQRES_URL="https://www.bitmarket.pl/json/{cryptoCurrency}{currency}/ticker.json";
    private final RestTemplate restTemplate;

    public BitMarketExchangeCryptocurrencyConnector(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public BitMarketExchangeCryptocurrency connect(String cryptoCurrency, String currency) {
        Map<String, String> params = prepareUriParams(cryptoCurrency, currency);

        ResponseEntity<BitMarketExchangeCryptocurrency> currencyRate =
                restTemplate.getForEntity(REQRES_URL, BitMarketExchangeCryptocurrency.class, params);

        return currencyRate.getBody();
    }

    private Map<String, String> prepareUriParams(String cryptoCurrency, String currency) {
        Map<String, String> params = new HashMap<>();
        params.put("cryptoCurrency", cryptoCurrency);
        params.put("currency", currency);

        return params;
    }
}
