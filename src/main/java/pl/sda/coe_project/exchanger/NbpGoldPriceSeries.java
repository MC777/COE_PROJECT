package pl.sda.coe_project.exchanger;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.time.LocalDate;

@Component
@Getter
@Setter
public class NbpGoldPriceSeries {

    @JsonProperty("data")
    private LocalDate date;

    @JsonProperty("cena")
    private BigDecimal price;
}
