package pl.sda.coe_project.connector;

import org.apache.http.conn.ssl.NoopHostnameVerifier;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.junit.Test;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;
import pl.sda.coe_project.exchanger.NbpExchangeGoldPriceSeries;
import pl.sda.coe_project.exchanger.NbpGoldPriceSeries;

import static junit.framework.TestCase.assertEquals;

public class NbpGoldPriceConnectorTest {

    @Test
    public void connect() {
        CloseableHttpClient httpClient = HttpClients.custom().setSSLHostnameVerifier(new NoopHostnameVerifier()).build();
        HttpComponentsClientHttpRequestFactory requestFactory = new HttpComponentsClientHttpRequestFactory();
        requestFactory.setHttpClient(httpClient);
        RestTemplate restTemplate = new RestTemplate(requestFactory);

        NbpGoldPriceConnector connector = new NbpGoldPriceConnector(restTemplate);

        NbpExchangeGoldPriceSeries response = connector.connect("1");

        assertEquals(response.getPriceSeries().get(0).getCena(), 148.98);

    }
}