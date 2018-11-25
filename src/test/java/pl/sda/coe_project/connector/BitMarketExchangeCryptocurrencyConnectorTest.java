package pl.sda.coe_project.connector;

import org.apache.http.conn.ssl.NoopHostnameVerifier;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.junit.Test;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;
import pl.sda.coe_project.exchanger.BitMarketExchangeCryptocurrency;

import static junit.framework.TestCase.assertEquals;
import static org.junit.Assert.*;

public class BitMarketExchangeCryptocurrencyConnectorTest {

    @Test
    public void connect() {
        CloseableHttpClient httpClient = HttpClients.custom().setSSLHostnameVerifier(new NoopHostnameVerifier()).build();
        HttpComponentsClientHttpRequestFactory requestFactory = new HttpComponentsClientHttpRequestFactory();
        requestFactory.setHttpClient(httpClient);
        RestTemplate restTemplate = new RestTemplate(requestFactory);

        BitMarketExchangeCryptocurrencyConnector connector = new BitMarketExchangeCryptocurrencyConnector(restTemplate);

        BitMarketExchangeCryptocurrency respons = connector.connect("BTC", "PLN");

        //assertEquals(respons.getAsk() , 	14555.8);
    }
}