package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
@Getter
@Setter
public class CurrencyExchangeRequest {

    private BigDecimal exchangeValueFrom;
    private BigDecimal exchangeValueTo;
    private String exchangeCurrencyFrom;
    private String exchangeCurrencyTo;
}
