package pl.sda.coe_project.connector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import pl.sda.coe_project.exchanger.NbpExchangeRateSeries;

import java.util.HashMap;
import java.util.Map;

@Component
public class NbpExchangeDataConnector {
    private static final String REQRES_URL="http://api.nbp.pl/api/exchangerates/rates/{table}/{code}/last/{topCount}/?format=json";
    private final RestTemplate restTemplate;

    @Autowired
    public NbpExchangeDataConnector(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public NbpExchangeRateSeries connect(String tableType, String currencyCode, String counts) {
        Map<String, String> params = prepareUriParams(tableType, currencyCode, counts);

        ResponseEntity<NbpExchangeRateSeries> currencyRate =
                restTemplate.getForEntity(REQRES_URL, NbpExchangeRateSeries.class, params);

        return currencyRate.getBody();
    }

    private Map<String, String> prepareUriParams(String tableType, String currencyCode, String counts) {
        Map<String, String> params = new HashMap<>();
        params.put("table", tableType);
        params.put("code", currencyCode);
        params.put("topCount", counts);

        return  params;
    }
}
