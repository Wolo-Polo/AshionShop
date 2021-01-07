package com.devpro.entities;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

@Entity
@Table(name = "role")
public class Role extends BaseEntity implements GrantedAuthority{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column(name = "tenquyen")
	private String tenQuyen;
	@Column(name = "mota")
	private String moTa;
	
	@ManyToMany(fetch = FetchType.EAGER, mappedBy = "dsRole")
	private List<TaiKhoan> dsTaiKhoan;
	public String getTenQuyen() {
		return tenQuyen;
	}
	public void setTenQuyen(String tenQuyen) {
		this.tenQuyen = tenQuyen;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public List<TaiKhoan> getDsTaiKhoan() {
		return dsTaiKhoan;
	}
	public void setDsTaiKhoan(List<TaiKhoan> dsTaiKhoan) {
		this.dsTaiKhoan = dsTaiKhoan;
	}
	public Role(Integer id, LocalDateTime thoiGianTao, int trangThai, String tenQuyen, String moTa,
			List<TaiKhoan> dsTaiKhoan) {
		super(id, thoiGianTao, trangThai);
		this.tenQuyen = tenQuyen;
		this.moTa = moTa;
		this.dsTaiKhoan = dsTaiKhoan;
	}
	public Role() {
		super();
	}
	@Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return this.tenQuyen;
	}
	
	
}
