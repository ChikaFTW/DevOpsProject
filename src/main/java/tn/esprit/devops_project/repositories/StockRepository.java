package tn.esprit.devops_project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import tn.esprit.devops_project.entities.Stock;

@CrossOrigin(origins = "http://localhost:4200")
public interface StockRepository extends JpaRepository<Stock, Long> {}

