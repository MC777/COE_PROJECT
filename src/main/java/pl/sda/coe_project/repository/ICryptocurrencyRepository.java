package pl.sda.coe_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.coe_project.model.Cryptocurrency;

import java.util.List;
import java.util.Optional;

@Repository
public interface ICryptocurrencyRepository extends JpaRepository<Cryptocurrency, Long> {
    List<Cryptocurrency> findAll();

    Optional<Cryptocurrency> findById(Long id);
}
