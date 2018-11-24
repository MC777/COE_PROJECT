package pl.sda.coe_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.sda.coe_project.model.OreWallet;
import pl.sda.coe_project.model.User;

import java.util.List;

public interface IOreWalletRepository extends JpaRepository<OreWallet, Long> {
    List<OreWallet> findByUser(User user);
}
