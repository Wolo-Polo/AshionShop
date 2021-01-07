package com.devpro.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.devpro.entities.NguoiDung;
import com.devpro.entities.TaiKhoan;
import com.devpro.repositories.TaiKhoanRepo;
@Service
public class TaiKhoanService implements UserDetailsService{
	@Autowired
	private TaiKhoanRepo taiKhoanRepo;
		
	public List<TaiKhoan> getAllTaiKhoan(){
		return taiKhoanRepo.findAll();
	}
	public TaiKhoan getTaiKhoanById(Integer id) {
		return taiKhoanRepo.findById(id).get();
	}
	public TaiKhoan getTaiKhaonByNguoiDung(NguoiDung nguoiDung) {
		return taiKhoanRepo.findTaiKhoanByNguoiDung(nguoiDung);
	}
	public TaiKhoan saveTaiKhoan(TaiKhoan taiKhoan) {
		return taiKhoanRepo.save(taiKhoan);
	}
	public void deleteTaiKhoan(Integer idTaiKhoan) {
		taiKhoanRepo.deleteById(idTaiKhoan);
	}
	
	//phụ vụ cho spring security
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		return taiKhoanRepo.findTaiKhoanByTenDangNhap(username);
	}
}
