package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
public class GoldRatesResult {

    private List<LocalDate> dates;

    private List<BigDecimal> prices;
}
