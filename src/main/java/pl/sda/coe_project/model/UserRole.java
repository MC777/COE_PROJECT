package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name="userroles")
public class UserRole {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="userroleid")
    private Long userroleid;

    @Column(name="userid")
    private Long userid;

    @Column(name="role")
    private String role;

    private String description;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
}
