package pl.sda.coe_project.connector;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;

@Component
@Getter
@Setter
public class RequesSampleGoldPriceDataResponse {
    private String data;
    private BigDecimal cena;
}
