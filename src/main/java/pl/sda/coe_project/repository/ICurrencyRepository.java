package pl.sda.coe_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.coe_project.model.Currency;

import java.util.List;
import java.util.Optional;

@Repository
public interface ICurrencyRepository extends JpaRepository<Currency, Long> {
    List<Currency> findAll();

    Optional<Currency> findById(Long id);
}
