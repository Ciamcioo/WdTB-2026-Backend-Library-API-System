package pl.wsb.las.library.entity;

import jakarta.persistence.Embeddable;

@Embeddable
public class Address {

    private String street;
    private String postalCode;
    private String province;
    private String city;
}
