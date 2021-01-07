package com.devpro.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "donhang")
public class DonHang extends BaseEntity{
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idtaikhoan")
	private TaiKhoan taiKhoan;
	
	@Column(name = "hodem")
	private String hoDem;
	@Column(name = "ten")
	private String ten;
	@Column(name = "diachi")
	private String diaChi;
	@Column(name = "email")
	private String email;
	@Column(name = "sodienthoai")
	private String soDienThoai;
	@Column(name = "ghiChu")
	private String ghiChu;
	
	@OneToMany(mappedBy = "donHang")
    List<DonHang_SanPham> donHang_SanPhams;
	
    
	public List<DonHang_SanPham> getDonHang_SanPhams() {
		return donHang_SanPhams;
	}
	public void setDonHang_SanPhams(List<DonHang_SanPham> donHang_SanPhams) {
		this.donHang_SanPhams = donHang_SanPhams;
	}
	public TaiKhoan getTaiKhoan() {
		return taiKhoan;
	}
	public void setTaiKhoan(TaiKhoan taiKhoan) {
		this.taiKhoan = taiKhoan;
	}
	public String getHoDem() {
		return hoDem;
	}
	public void setHoDem(String hoDem) {
		this.hoDem = hoDem;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	
	
}
