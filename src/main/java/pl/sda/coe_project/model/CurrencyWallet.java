package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Getter
@Setter
@Entity
@Table(name = "currency_wallet")
public class CurrencyWallet {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_cryptocurrency_wallet")
    private Long id;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "currency_id")
    private Currency currency;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @NotNull
    private BigDecimal quantity;
}
