package pl.wsb.las.library.entity;

import jakarta.persistence.Embeddable;

@Embeddable
public class OpeningHours {

    private String startHour;
    private String closeHour;

    public String getStartHour() {
        return startHour;
    }

    public void setStartHour(String startHour) {
        this.startHour = startHour;
    }

    public String getCloseHour() {
        return closeHour;
    }

    public void setCloseHour(String closeHour) {
        this.closeHour = closeHour;
    }
}
