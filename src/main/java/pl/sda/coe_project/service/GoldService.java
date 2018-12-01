package pl.sda.coe_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.sda.coe_project.connector.NbpGoldPriceConnector;
import pl.sda.coe_project.exchanger.NbpGoldPriceSeries;
import pl.sda.coe_project.model.GoldRatesResult;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;

@Service
public class GoldService {

    private final NbpGoldPriceConnector goldPriceConnector;

    @Autowired
    public GoldService(NbpGoldPriceConnector goldPriceConnector) {
        this.goldPriceConnector = goldPriceConnector;
    }

    public GoldRatesResult getGoldPricesForPeriod() {
        List<NbpGoldPriceSeries> nbpGoldPriceSeries = goldPriceConnector.goldPrices("10");

        GoldRatesResult goldRatesResult = new GoldRatesResult();

        List<LocalDate> dates = new LinkedList<>();
        List<BigDecimal> prices = new LinkedList<>();

        for (NbpGoldPriceSeries dayPrace: nbpGoldPriceSeries) {
            dates.add(dayPrace.getDate());
            prices.add(dayPrace.getPrice());
        }
        goldRatesResult.setDates(dates);
        goldRatesResult.setPrices(prices);

        return goldRatesResult;
    }
}
