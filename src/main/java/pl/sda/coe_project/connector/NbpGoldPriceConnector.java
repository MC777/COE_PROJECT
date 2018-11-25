package pl.sda.coe_project.connector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import pl.sda.coe_project.exchanger.NbpExchangeGoldPriceSeries;
import pl.sda.coe_project.exchanger.NbpGoldPriceSeries;

import java.util.HashMap;
import java.util.Map;

@Component
public class NbpGoldPriceConnector {
    private static final String REQRES_URL="http://api.nbp.pl/api/cenyzlota/last/{topCount}/?format=json";
    private final RestTemplate restTemplate;

    @Autowired
    public NbpGoldPriceConnector(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public NbpExchangeGoldPriceSeries connect(String counts) {
        Map<String, String> params = prepareUriParams(counts);

        ResponseEntity<NbpExchangeGoldPriceSeries> currencyRate =
                restTemplate.getForEntity(REQRES_URL, NbpExchangeGoldPriceSeries.class, params);

        return currencyRate.getBody();
    }

    private Map<String, String> prepareUriParams(String counts) {
        Map<String, String> params = new HashMap<>();

        params.put("topCount", counts);

        return  params;
    }
}
