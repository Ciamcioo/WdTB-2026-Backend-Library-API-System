package pl.wsb.las.library.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;
import pl.wsb.las.rent.entity.Rent;

import java.util.List;

@Entity
@Getter
@Setter
public class Book {

    @Id
    private Long isbn;

    @Column(name = "title", nullable = false)
    private String title;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "author_id", nullable = false)
    private Author author;

    @Column(name = "pages", nullable = false)
    private Long pages;

    @Column(name = "publish_year", nullable = false)
    private Integer publishYear;

    @Enumerated(EnumType.STRING)
    @Column(name = "type")
    private Type type;

    @ManyToMany(mappedBy = "books")
    private List<Rent> rents;

    public Book() {
        // required by JPA
    }
}
