package pl.sda.coe_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.coe_project.model.UserRole;

@Repository
public interface IUserRoleRepository extends JpaRepository<UserRole, Long> {
    UserRole finByAuthority(String authority);
}
