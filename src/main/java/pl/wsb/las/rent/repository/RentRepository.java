package pl.wsb.las.rent.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.wsb.las.rent.entity.Rent;

import java.util.List;

public interface RentRepository extends JpaRepository<Rent, Long> {

    List<Rent> findByUser_Id(Long id);
}
