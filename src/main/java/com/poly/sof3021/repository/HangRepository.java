package com.poly.sof3021.repository;

import com.poly.sof3021.entity.Hang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HangRepository extends JpaRepository<Hang, Long> {
}
