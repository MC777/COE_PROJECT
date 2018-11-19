package pl.sda.coe_project.connector;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Getter
@Setter
public class RequesSampleExchangeratesDataResponse {
    private String table;
    private String currency;
    private String code;
    List<RequesSampleRateDataResponse> rates;
}
