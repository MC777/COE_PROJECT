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
@Table(name = "cryptocurrency")
public class Cryptocurrency {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_cryptocurrency")
    private Long id;

    @NotNull
    @Size(max = 10)
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

    @OneToMany(mappedBy = "cryptocurrency")
    private List<CryptocurrencyWallet> cryptocurrencyWalletList;
}
