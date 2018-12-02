package pl.sda.coe_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.sda.coe_project.connector.CurrencyExchangeConnector;
import pl.sda.coe_project.model.CurrencyExchangeRequest;

import java.math.BigDecimal;
import java.math.RoundingMode;

@Service
public class ExchangeService {

    private final CurrencyExchangeConnector connector;

    @Autowired
    public ExchangeService(CurrencyExchangeConnector connector) {
        this.connector = connector;
    }

    public BigDecimal calculate(CurrencyExchangeRequest exchangeRequest) {
        BigDecimal rate = connector.connect(exchangeRequest.getExchangeCurrencyFrom(), exchangeRequest.getExchangeCurrencyTo());

        return rate.multiply(exchangeRequest.getExchangeValueFrom()).setScale(2, RoundingMode.HALF_UP);
    }
}
