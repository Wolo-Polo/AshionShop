package com.devpro.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.entities.NguoiDung;
import com.devpro.repositories.NguoiDungRepo;

@Service
public class NguoiDungService {
	@Autowired
	private NguoiDungRepo nguoiDungRepo;
	
	public List<NguoiDung> getAllNguoiDung(){
		return nguoiDungRepo.findAll();
	}
	public NguoiDung getNguoiDungById(Integer id) {
		return nguoiDungRepo.findById(id).get();
	}
	public NguoiDung saveNguoiDung(NguoiDung nguoiDung) {
		return nguoiDungRepo.save(nguoiDung);
	}
	public void deleteNguoiDung(Integer id) {
		nguoiDungRepo.deleteById(id);
	}
}
