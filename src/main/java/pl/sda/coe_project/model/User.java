package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.util.StringUtils;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.*;

@Getter
@Setter
@Entity
@Table(name = "user")
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_user")
    private Long id;

    @NotNull
    @Size(max = 255)
    @Column(name = "username", unique = true)
    private String userName;

    @NotNull
    @Size(max = 255)
    @Column(name = "password")
    private String password;

    @NotNull
    @Column(name ="enabled")
    private int enabled;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.PERSIST)
    private List<UserRole> userRoles = new ArrayList<>();

    @OneToOne(cascade = CascadeType.PERSIST)
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

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return convertAuthorities(this.userRoles);
    }
    private Set<GrantedAuthority> convertAuthorities(List<UserRole> userRoles) {
        Set<GrantedAuthority> authorities = new HashSet<>();
        for (UserRole role : userRoles) {
            authorities.add(new SimpleGrantedAuthority(role.getRole()));
        }
        return authorities;
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
        return userName;
    }
}
