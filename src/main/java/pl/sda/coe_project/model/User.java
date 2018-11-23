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
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="id_user")
    private Long userId;

    @NotNull
    @Size(max = 255)
    @Column(name = "user_name")
    private String userName;

    @NotNull
    @Size(max = 255)
    @Column(name = "password")
    private String password;

    @NotNull
    @Column(name ="enabled")
    private int enabled;

    @NotNull
    @OneToOne
    @JoinColumn(name = "user_name_id")
    private UserInfo userInfo;

    @OneToMany(mappedBy = "user")
    private List<CurrencyWallet> currencyWalletList;

    @OneToMany(mappedBy = "user")
    private List<CryptocurrencyWallet> cryptocurrencyWalletList;

    @OneToMany(mappedBy = "user")
    private List<OreWallet> oreWalletList;

    public User() {
    }

    public User(String username, String password) {
        this.userName = username;
        this.password = password;
    }
}
