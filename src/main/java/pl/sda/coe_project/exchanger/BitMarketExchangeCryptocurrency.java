package pl.sda.coe_project.exchanger;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;

@Component
@Getter
@Setter
public class BitMarketExchangeCryptocurrency {
    private BigDecimal ask;
    private BigDecimal bid;
    private BigDecimal last;
    private BigDecimal low;
    private BigDecimal high;
    private BigDecimal vwap;
    private BigDecimal volume;
    private String cryptoName;
}
