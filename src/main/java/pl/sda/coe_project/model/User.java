package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.util.StringUtils;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Collection;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "user")
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_user")
    private Long userId;

    @NotNull
    @Size(max = 255)
    @Column(name = "username")
    private String userName;

    @NotNull
    @Size(max = 255)
    @Column(name = "password")
    private String password;

    @NotNull
    @Column(name ="enabled")
    private int enabled;

    @OneToMany(mappedBy = "user")
    private List<UserRole> userRoles;

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

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        String roles= StringUtils.collectionToCommaDelimitedString(this.getUserRoles());
        return AuthorityUtils.commaSeparatedStringToAuthorityList(roles);
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public String getUsername() {
        return this.getUsername();
    }
}
