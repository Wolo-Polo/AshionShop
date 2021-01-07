package com.devpro.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.devpro.entities.SanPham;

@Repository
public interface SanPhamRepo extends JpaRepository<SanPham, Integer>{
	@Query(value = "select * from sanpham order by luotmua limit 0, 3", nativeQuery = true)
	public List<SanPham> getDanhSachSanPhamHot();
	@Query(value = "select * from sanpham order by luotthich limit 0, 3", nativeQuery = true)
	public List<SanPham> getDanhSachSanPhamYeuThich();
	@Query(value = "select * from sanpham order by giamgia DESC limit 0, 3", nativeQuery = true)
	public List<SanPham> getDanhSachSanPhamGiamGia();
	@Query(value = "select * from sanpham where iddanhmuc=?", nativeQuery = true)
	List<SanPham> getSanPhamByIdDanhMuc(Integer idDanhMuc);
	
	
}
