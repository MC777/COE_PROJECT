package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Getter
@Setter
@Entity
@Table(name = "user_info")
public class UserInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_user_info")
    private Long id;

    @NotNull
    @Size(max = 255)
    @Column(name = "name")
    private String name;

    @NotNull
    @Size(max = 255)
    @Column(name = "surname")
    private String surname;

    @NotNull
    @Column(name = "pesel")
    private Long pesel;

    @NotNull
    @Size(max = 45)
    @Column(name = "phone")
    private String phone;

    @NotNull
    @Email
    @Column(name = "email")
    private String email;

    @Size(max = 255)
    @Column(name = "citizeship")
    private String citizeship;

    @Size(max = 255)
    @Column(name = "address")
    private String address;

    @Size(max = 255)
    @Column(name = "post_code")
    private String postCode;

    @Size(max = 255)
    @Column(name = "city")
    private String city;

    @OneToOne(mappedBy = "userInfo")
    private User user;
}
