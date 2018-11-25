package pl.sda.coe_project.exchanger;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;

@Component
@Getter
@Setter
public class BankExchangeCryptocurrency {
    private BigDecimal max;
    private BigDecimal min;
    private BigDecimal last;
    private BigDecimal bid;
    private BigDecimal ask;
    private BigDecimal vwap;
    private BigDecimal average;
    private BigDecimal volume;
}