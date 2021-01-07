package com.devpro.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.entities.BaiViet;
import com.devpro.repositories.BaiVietRepo;

@Service
public class BaiVietService {
	@Autowired
	private BaiVietRepo baiVietRepo;
	
	public List<BaiViet> getAllBaiViet(){
		return baiVietRepo.findAll();
	}
	public BaiViet getBaiVietById(Integer id) {
		return baiVietRepo.findById(id).get();
	}
	public BaiViet saveBaiViet(BaiViet baiViet) {
		return baiVietRepo.save(baiViet);
	}
	public void deleteBaiViet(Integer id) {
		baiVietRepo.deleteById(id);
	}
}
