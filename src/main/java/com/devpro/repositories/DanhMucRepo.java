package com.devpro.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.entities.DanhMuc;

@Repository
public interface DanhMucRepo extends JpaRepository<DanhMuc, Integer>{

	public List<DanhMuc> findDanhMucByTenDanhMuc(String tenDanhMuc);
	
	public List<DanhMuc> getDanhMucByDanhMucCha(DanhMuc danhMuc);
}
