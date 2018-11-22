package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Getter
@Setter
@Entity
@Table(name = "currency")
public class Currency {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_currency")
    private Long currencyId;

    @NotNull
    @Size(max = 3)
    @Column(name = "nickname")
    private String nickname;

    @NotNull
    @Size(max = 255)
    @Column(name = "full_name")
    private String fullName;

    @Column(name = "description")
    @Size(max = 255)
    private String description;

    @Column(name = "enabled")
    private Boolean enabled;
}
