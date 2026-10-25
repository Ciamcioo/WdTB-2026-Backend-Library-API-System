package pl.wsb.las.rent.entity;

import jakarta.persistence.Embeddable;

import java.time.LocalDate;

@Embeddable
public class DateRange {

    private LocalDate startDate;
    private LocalDate endDate;
}
