package com.devpro.entities;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "nguoidung")
public class NguoiDung extends BaseEntity{
	@Column(name = "tendaydu")
	private String tenDayDu;
	@Column(name = "email")
	private String email;
	@Column(name = "sodienthoai")
	private String soDienThoai;
	@Column(name = "diachi")
	private String diaChi;
	@Column(name = "urlavatar")
	private String urlAvatar;
	
	@OneToOne(mappedBy = "nguoiDung")
	private TaiKhoan taiKhoan;

	public String getTenDayDu() {
		return tenDayDu;
	}

	public void setTenDayDu(String tenDayDu) {
		this.tenDayDu = tenDayDu;
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

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getUrlAvatar() {
		return urlAvatar;
	}

	public void setUrlAvatar(String urlAvatar) {
		this.urlAvatar = urlAvatar;
	}

	public TaiKhoan getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(TaiKhoan taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	public NguoiDung(Integer id, LocalDateTime thoiGianTao, int trangThai, String tenDayDu, String email,
			String soDienThoai, String diaChi, String urlAvatar, TaiKhoan taiKhoan) {
		super(id, thoiGianTao, trangThai);
		this.tenDayDu = tenDayDu;
		this.email = email;
		this.soDienThoai = soDienThoai;
		this.diaChi = diaChi;
		this.urlAvatar = urlAvatar;
		this.taiKhoan = taiKhoan;
	}

	public NguoiDung() {
		super();
	}

	
}
