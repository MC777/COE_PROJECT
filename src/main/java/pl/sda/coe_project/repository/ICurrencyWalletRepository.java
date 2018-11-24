package pl.sda.coe_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.coe_project.model.CurrencyWallet;
import pl.sda.coe_project.model.User;

import java.util.List;

@Repository
public interface ICurrencyWalletRepository extends JpaRepository<CurrencyWallet, Long> {
    List<CurrencyWallet> findByUser(User User);
}
