package pl.sda.coe_project.connector;

import org.apache.http.conn.ssl.NoopHostnameVerifier;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.junit.Test;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;
import pl.sda.coe_project.exchanger.NbpGoldPriceSeries;

import java.util.List;

import static junit.framework.TestCase.assertEquals;

public class NbpGoldPriceConnectorTest {

    @Test
    public void connect() {
        CloseableHttpClient httpClient = HttpClients.custom().setSSLHostnameVerifier(new NoopHostnameVerifier()).build();
        HttpComponentsClientHttpRequestFactory requestFactory = new HttpComponentsClientHttpRequestFactory();
        requestFactory.setHttpClient(httpClient);
        RestTemplate restTemplate = new RestTemplate(requestFactory);

        NbpGoldPriceConnector connector = new NbpGoldPriceConnector(restTemplate);

        List<NbpGoldPriceSeries> response = connector.goldPrices("1");

        //assertEquals(response.get(0).getCena(), 148.98);

    }
}