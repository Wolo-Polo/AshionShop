package com.devpro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.entities.DonHang_SanPham;

@Repository
public interface DonHang_SanPhamRepo extends JpaRepository<DonHang_SanPham, Integer> {

}
