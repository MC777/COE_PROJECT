package pl.sda.coe_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.sda.coe_project.connector.BitMarketExchangeCryptocurrencyConnector;
import pl.sda.coe_project.exchanger.BitMarketExchangeCryptocurrency;
import pl.sda.coe_project.model.Cryptocurrency;
import pl.sda.coe_project.repository.ICryptocurrencyRepository;

import java.util.LinkedList;
import java.util.List;

@Service
public class CryptocurrencyService {
    private final BitMarketExchangeCryptocurrencyConnector bitMarketExchangeCryptocurrencyConnector;
    private final ICryptocurrencyRepository cryptocurrencyRepository;

    @Autowired
    public CryptocurrencyService(BitMarketExchangeCryptocurrencyConnector bitMarketExchangeCryptocurrencyConnector, ICryptocurrencyRepository cryptocurrencyRepository) {
        this.bitMarketExchangeCryptocurrencyConnector = bitMarketExchangeCryptocurrencyConnector;
        this.cryptocurrencyRepository = cryptocurrencyRepository;
    }

    public List<BitMarketExchangeCryptocurrency> getCryptoCurrencyPricess() {
        List<Cryptocurrency> cryptocurrencyList =  cryptocurrencyRepository.findAll();
        List<BitMarketExchangeCryptocurrency> bitMarketExchangeCryptocurrencyList = new LinkedList<>();

        for (Cryptocurrency currentCry: cryptocurrencyList) {
            BitMarketExchangeCryptocurrency cryptoSeriesResult = bitMarketExchangeCryptocurrencyConnector.connect(currentCry.getNickname(), "PLN");
            cryptoSeriesResult.setCryptoName(currentCry.getFullName());
            bitMarketExchangeCryptocurrencyList.add(cryptoSeriesResult);
        }
        return bitMarketExchangeCryptocurrencyList;
    }
}
