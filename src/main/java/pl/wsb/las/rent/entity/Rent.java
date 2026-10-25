package pl.wsb.las.rent.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Rent {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    private int userId;

    private long bookIsbn;

    @Embedded
    @Column(name = "date_range", nullable = false)
    private DateRange dateRange;


    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
