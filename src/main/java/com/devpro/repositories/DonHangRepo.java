package com.devpro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.entities.DonHang;
@Repository
public interface DonHangRepo extends JpaRepository<DonHang, Integer>{

}
