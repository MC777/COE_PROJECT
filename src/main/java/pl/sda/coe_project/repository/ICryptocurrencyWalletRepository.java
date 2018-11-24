package pl.sda.coe_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.coe_project.model.CryptocurrencyWallet;
import pl.sda.coe_project.model.User;

import java.util.List;

@Repository
public interface ICryptocurrencyWalletRepository extends JpaRepository<CryptocurrencyWallet, Long> {
    List<CryptocurrencyWallet> findByUser(User user);
}
