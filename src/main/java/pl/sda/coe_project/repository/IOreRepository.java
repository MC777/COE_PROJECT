package pl.sda.coe_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.sda.coe_project.model.Ore;

import java.util.List;
import java.util.Optional;

public interface IOreRepository extends JpaRepository<Ore, Long> {
   List<Ore> findAll();

   Optional<Ore> findById(Long id);
}
