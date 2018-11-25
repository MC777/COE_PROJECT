package pl.sda.coe_project.exchanger;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Getter
@Setter
public class NbpExchangeRateSeries {
    private String table;
    private String currency;
    private String code;
    List<NbpRateSeries> rates;
}
