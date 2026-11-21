package pl.wsb.las.rent.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;
import pl.wsb.las.account.entity.UserAccount;
import pl.wsb.las.library.entity.Book;

import java.util.List;

@Entity
@Getter
@Setter
public class Rent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private UserAccount user;

    @ManyToMany
    @JoinTable(
            name = "book_rent",
            joinColumns = @JoinColumn(name = "rent_id"),
            inverseJoinColumns = @JoinColumn(name = "book_isbn")
    )
    private List<Book> books;

    @Embedded
    @Column(name = "date_range", nullable = false)
    private DateRange dateRange;

    @Column(name = "is_returned", nullable = false)
    private Boolean isReturned;

}
