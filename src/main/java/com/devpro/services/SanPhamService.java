package com.devpro.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.entities.SanPham;
import com.devpro.repositories.SanPhamRepo;

@Service
public class SanPhamService {
	@Autowired
	private SanPhamRepo sanPhamRepo;
	
	public List<SanPham> getAllSanPham(){
		return sanPhamRepo.findAll();
	}
	
	public SanPham getSanPhamById(Integer id) {
		return sanPhamRepo.findById(id).get();
	}
	
	public SanPham saveSanPham(SanPham sanPham) {
		return sanPhamRepo.save(sanPham);
	}
	
	public void deleteSanPham(Integer id) {
		sanPhamRepo.deleteById(id);
	}
	
	public List<SanPham> getDanhSachSanPhamHot(){
		return sanPhamRepo.getDanhSachSanPhamHot();
	}
	public List<SanPham> getDanhSachSanPhamYeuThich(){
		return sanPhamRepo.getDanhSachSanPhamYeuThich();
	}
	public List<SanPham> getDanhSachSanPhamGiamGia(){
		return sanPhamRepo.getDanhSachSanPhamGiamGia();
	}
	
	public List<SanPham> getSanPhamByIdDanhMuc(Integer idDanhMuc){
		return sanPhamRepo.getSanPhamByIdDanhMuc(idDanhMuc);
	}
}
