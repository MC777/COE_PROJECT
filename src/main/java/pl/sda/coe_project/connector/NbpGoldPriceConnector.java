package pl.sda.coe_project.connector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import pl.sda.coe_project.exchanger.NbpGoldPriceSeries;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class NbpGoldPriceConnector {
    private static final String REQRES_URL="http://api.nbp.pl/api/cenyzlota/last/{topCount}/?format=json";
    private final RestTemplate restTemplate;

    @Autowired
    public NbpGoldPriceConnector(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<NbpGoldPriceSeries> goldPrices(String counts) {
        Map<String, String> params = prepareUriParams(counts);

        ResponseEntity<List<NbpGoldPriceSeries>> currencyRate =
                restTemplate.exchange(REQRES_URL, HttpMethod.GET, null,
                        new ParameterizedTypeReference<List<NbpGoldPriceSeries>>() {
                }, params);
        return currencyRate.getBody();
    }

    private Map<String, String> prepareUriParams(String counts) {
        Map<String, String> params = new HashMap<>();

        params.put("topCount", counts);

        return  params;
    }
}
