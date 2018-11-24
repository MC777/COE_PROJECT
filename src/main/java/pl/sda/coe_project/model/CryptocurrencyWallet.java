package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Getter
@Setter
@Entity
@Table(name = "cryptocurrency_wallet")
public class CryptocurrencyWallet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_cryptocurrency_wallet")
    private Long id;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "cryptocurrency_id")
    private Cryptocurrency cryptocurrency;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @NotNull
    private BigDecimal quantity;
}
