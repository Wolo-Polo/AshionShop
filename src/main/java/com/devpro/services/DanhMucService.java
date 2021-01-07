package com.devpro.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.entities.DanhMuc;
import com.devpro.repositories.DanhMucRepo;

@Service
public class DanhMucService {
	@Autowired
	private DanhMucRepo danhMucRepo;
	
	public List<DanhMuc> getAllDanhMuc(){
		return danhMucRepo.findAll();
	}
	
	public DanhMuc getDanhMucById(Integer id) {
		return danhMucRepo.findById(id).get();
	}
	
	public DanhMuc saveDanhMuc(DanhMuc danhMuc) {
		return danhMucRepo.save(danhMuc);
	}
	
	public void deleteDanhMuc(Integer id) {
		danhMucRepo.deleteById(id);
	}
	
	public DanhMuc getDanhMucByTenDanhMuc(String tenDanhMuc) {
		return danhMucRepo.findDanhMucByTenDanhMuc(tenDanhMuc).get(0);
	}
	
	public List<DanhMuc> getDanhMucByDanhMucCha(DanhMuc danhMucCha){
		return danhMucRepo.getDanhMucByDanhMucCha(danhMucCha);
	}
}
