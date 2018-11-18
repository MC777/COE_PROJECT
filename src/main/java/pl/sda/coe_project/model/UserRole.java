package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;
import javax.persistence.Entity;

@Getter
@Setter
@Entity
public class UserRole{
    private Long user_role_id;
    private String username;
    private String authority;
}
