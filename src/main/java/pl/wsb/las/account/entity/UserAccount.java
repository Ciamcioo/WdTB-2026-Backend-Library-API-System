package pl.wsb.las.account.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import pl.wsb.las.account.domain.AccountRole;
import pl.wsb.las.rent.entity.Rent;

import java.time.LocalDateTime;
import java.util.List;

/**
 * Konto użytkownika: jedyna tabela, którą dostajecie gotową. Każdy projekt ma użytkowników.
 *
 * <p>Potraktujcie ją jako wzór mapowania. Wasze encje (klient, korepetytor, wolontariusz…)
 * mogą wskazywać na konto relacją {@code @ManyToOne} albo {@code @OneToOne}.
 * Na LAB 06 to konto posłuży do logowania.
 */
@Entity
@Table(name = "user_account")
@Getter
@Setter
public class UserAccount {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "email", nullable = false, unique = true, length = 120)
    private String email;

    @Column(name = "display_name", nullable = false, length = 60)
    private String displayName;

    @Enumerated(EnumType.STRING)
    @Column(name = "role", nullable = false, length = 20)
    private AccountRole role;

    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private List<Rent> rents;

    protected UserAccount() {
    }

    public UserAccount(String email, String displayName, AccountRole role) {
        this.email = email;
        this.displayName = displayName;
        this.role = role;
        this.createdAt = LocalDateTime.now();
    }
}
