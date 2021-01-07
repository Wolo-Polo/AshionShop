package com.devpro.entities;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="blog")
public class BaiViet extends BaseEntity{
	@Column(name = "tieude")
	private String tieuDe;
	@Column(name = "urlavatar")
	private String urlAvatar;
	@Column(name = "motangan")
	private String moTaNgan;
	@Column(name = "noidung")
	private String noiDung;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idtaikhoan")
	private TaiKhoan taiKhoan;
	private int luotXem;
	public String getTieuDe() {
		return tieuDe;
	}
	public void setTieuDe(String tieuDe) {
		this.tieuDe = tieuDe;
	}
	public String getUrlAvatar() {
		return urlAvatar;
	}
	public void setUrlAvatar(String urlAvatar) {
		this.urlAvatar = urlAvatar;
	}
	public String getMoTaNgan() {
		return moTaNgan;
	}
	public void setMoTaNgan(String moTaNgan) {
		this.moTaNgan = moTaNgan;
	}
	public String getNoiDung() {
		return noiDung;
	}
	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}
	public TaiKhoan getTaiKhoan() {
		return taiKhoan;
	}
	public void setTaiKhoan(TaiKhoan taiKhoan) {
		this.taiKhoan = taiKhoan;
	}
	public int getLuotXem() {
		return luotXem;
	}
	public void setLuotXem(int luotXem) {
		this.luotXem = luotXem;
	}
	public BaiViet(Integer id, LocalDateTime thoiGianTao, int trangThai, String tieuDe, String urlAvatar, String moTaNgan,
			String noiDung, TaiKhoan taiKhoan, int luotXem) {
		super(id, thoiGianTao, trangThai);
		this.tieuDe = tieuDe;
		this.urlAvatar = urlAvatar;
		this.moTaNgan = moTaNgan;
		this.noiDung = noiDung;
		this.taiKhoan = taiKhoan;
		this.luotXem = luotXem;
	}
	public BaiViet() {
		super();
	}
	
}
