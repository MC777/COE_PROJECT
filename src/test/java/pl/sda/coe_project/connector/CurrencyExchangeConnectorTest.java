package pl.sda.coe_project.connector;

import org.junit.Test;
import org.springframework.web.client.RestTemplate;

import static org.junit.Assert.*;

public class CurrencyExchangeConnectorTest {

    @Test
    public void testConnect () {
        CurrencyExchangeConnector connector = new CurrencyExchangeConnector(new RestTemplate());
        connector.connect("PLN", "USD");
    }

}