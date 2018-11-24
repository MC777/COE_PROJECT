package pl.sda.coe_project.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Getter
@Setter
@Entity
@Table(name = "ore_wallet")
public class OreWallet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_ore_wallet")
    private Long id;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "ore_id")
    private Ore ore;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @NotNull
    private BigDecimal quantity;
}
