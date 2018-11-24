package pl.sda.coe_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.coe_project.model.User;

@Repository
public interface IUserRepository extends JpaRepository<User, Long> {
    User findByUserName(String userName);
}
