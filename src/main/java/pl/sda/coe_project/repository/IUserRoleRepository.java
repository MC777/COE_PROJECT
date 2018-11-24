package pl.sda.coe_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.sda.coe_project.model.UserRole;

import java.util.List;

@Repository
public interface IUserRoleRepository extends JpaRepository<UserRole, Long> {
    @Query("select a.role from UserRole a, User b where b.userName=?1 and a.userid=b.userId")
    List<String> findRoleByUserName(String authority);
}
