package com.poly.sof3021.repository;

import com.poly.sof3021.entity.MayTinh;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MayTinhRepository extends JpaRepository<MayTinh, Long> {
}
