package pl.sda.coe_project.connector;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;

@Component
@Getter
@Setter
public class RequesSampleRateDataResponse {
    private String no;
    private String effectiveDate;
    private BigDecimal mid;
}
