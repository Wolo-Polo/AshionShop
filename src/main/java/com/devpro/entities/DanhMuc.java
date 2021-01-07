package com.devpro.entities;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "danhmuc")
public class DanhMuc extends BaseEntity{
	@Column(name = "tendanhmuc")
	private String tenDanhMuc;
	@Column(name="mota")
	private String moTa;
	@Column(name="urlavatar")
	private String urlAvatar;
	
	@OneToMany(mappedBy = "danhMuc", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<SanPham> dsSanPham;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="iddanhmuc")
	private DanhMuc danhMucCha;
	@OneToMany(mappedBy = "danhMucCha", fetch = FetchType.EAGER)
	private List<DanhMuc> dsDanhMucCon;
	
	public String getTenDanhMuc() {
		return tenDanhMuc;
	}

	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getUrlAvatar() {
		return urlAvatar;
	}

	public void setUrlAvatar(String urlAvatar) {
		this.urlAvatar = urlAvatar;
	}

	public List<SanPham> getDsSanPham() {
		return dsSanPham;
	}

	public void setDsSanPham(List<SanPham> dsSanPham) {
		this.dsSanPham = dsSanPham;
	}

	public DanhMuc getDanhMucCha() {
		return danhMucCha;
	}

	public void setDanhMucCha(DanhMuc danhMucCha) {
		this.danhMucCha = danhMucCha;
	}

	public List<DanhMuc> getDsDanhMucCon() {
		return dsDanhMucCon;
	}

	public void setDsDanhMucCon(List<DanhMuc> dsDanhMucCon) {
		this.dsDanhMucCon = dsDanhMucCon;
	}

	public DanhMuc(Integer id, LocalDateTime thoiGianTao, int trangThai, String tenDanhMuc, String moTa,
			String urlAvatar, List<SanPham> dsSanPham, DanhMuc danhMucCha, List<DanhMuc> dsDanhMucCon) {
		super(id, thoiGianTao, trangThai);
		this.tenDanhMuc = tenDanhMuc;
		this.moTa = moTa;
		this.urlAvatar = urlAvatar;
		this.dsSanPham = dsSanPham;
		this.danhMucCha = danhMucCha;
		this.dsDanhMucCon = dsDanhMucCon;
	}

	public DanhMuc() {
		super();
	}


}
