package pl.sda.coe_project.exchanger;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Getter
@Setter
public class NbpExchangeGoldPriceSeries {
    List<NbpGoldPriceSeries> priceSeries;
}
