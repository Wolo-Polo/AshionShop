package com.devpro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.entities.NguoiDung;
import com.devpro.entities.TaiKhoan;

@Repository
public interface TaiKhoanRepo extends JpaRepository<TaiKhoan, Integer>{
	public TaiKhoan findTaiKhoanByNguoiDung(NguoiDung nguoiDung);
	
	public TaiKhoan findTaiKhoanByTenDangNhap(String tenDangNhap);
}
