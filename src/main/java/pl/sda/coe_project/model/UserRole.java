package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name="user_roles")
public class UserRole {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_user_role")
    private Long id;

    @Column(name="role")
    private String role;

    @Column(name="description")
    private String description;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
}
