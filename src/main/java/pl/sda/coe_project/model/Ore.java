package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "ore")
public class Ore {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_ore")
    private Long id;

    @NotNull
    @Size(max = 255)
    @Column(name = "nickname")
    private String nickname;

    @NotNull
    @Size(max = 255)
    @Column(name = "full_name")
    private String fullName;

    @Size(max = 255)
    @Column(name = "description")
    private String description;

    @Column(name = "enabled")
    private Boolean enabled;

    @OneToMany(mappedBy = "ore")
    private List<OreWallet> oreWalletList;
}
