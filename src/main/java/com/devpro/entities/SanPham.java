package com.devpro.entities;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "sanpham")
public class SanPham extends BaseEntity{
	@Column(name = "tensanpham")
	private String tenSanPham;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "iddanhmuc")
	private DanhMuc danhMuc;
	
	@Column(name="gia", precision = 10, scale = 2)
	private BigDecimal gia;
	
	@Column(name="giamgia")
	private int giamGia;
	@Column(name="motangan")
	private String moTaNgan;
	@Column(name="mota", columnDefinition = "LONGTEXT")
	private String moTa;
	
	@Column(name="urlavatar1")
	private String urlAvatar1;
	
	@Column(name="urlavatar2")
	private String urlAvatar2;
	
	@Column(name="urlavatar3")
	private String urlAvatar3;
	
	@Column(name = "luotxem")
	private int luotXem;
	@Column(name="luotmua")
	private int luotMua;
	@Column(name="luotthich")
	private int luotThich;
	
	@OneToOne(mappedBy = "sanPham")
	private SanPhamTrongGioHang sanPhamTrongGioHang;
	
	@OneToMany(mappedBy = "sanPham")
    List<DonHang_SanPham> donHang_SanPhams;
	
	public SanPhamTrongGioHang getSanPhamTrongGioHang() {
		return sanPhamTrongGioHang;
	}
	public void setSanPhamTrongGioHang(SanPhamTrongGioHang sanPhamTrongGioHang) {
		this.sanPhamTrongGioHang = sanPhamTrongGioHang;
	}
	public List<DonHang_SanPham> getDonHang_SanPhams() {
		return donHang_SanPhams;
	}
	public void setDonHang_SanPhams(List<DonHang_SanPham> donHang_SanPhams) {
		this.donHang_SanPhams = donHang_SanPhams;
	}
	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public DanhMuc getDanhMuc() {
		return danhMuc;
	}
	public void setDanhMuc(DanhMuc danhMuc) {
		this.danhMuc = danhMuc;
	}
	public BigDecimal getGia() {
		return gia;
	}
	public void setGia(BigDecimal gia) {
		this.gia = gia;
	}
	public int getGiamGia() {
		return giamGia;
	}
	public void setGiamGia(int giamGia) {
		this.giamGia = giamGia;
	}
	public String getMoTaNgan() {
		return moTaNgan;
	}
	public void setMoTaNgan(String moTaNgan) {
		this.moTaNgan = moTaNgan;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public String getUrlAvatar1() {
		return urlAvatar1;
	}
	public void setUrlAvatar1(String urlAvatar1) {
		this.urlAvatar1 = urlAvatar1;
	}
	public String getUrlAvatar2() {
		return urlAvatar2;
	}
	public void setUrlAvatar2(String urlAvatar2) {
		this.urlAvatar2 = urlAvatar2;
	}
	public String getUrlAvatar3() {
		return urlAvatar3;
	}
	public void setUrlAvatar3(String urlAvatar3) {
		this.urlAvatar3 = urlAvatar3;
	}
	public int getLuotXem() {
		return luotXem;
	}
	public void setLuotXem(int luotXem) {
		this.luotXem = luotXem;
	}
	public int getLuotMua() {
		return luotMua;
	}
	public void setLuotMua(int luotMua) {
		this.luotMua = luotMua;
	}
	public int getLuotThich() {
		return luotThich;
	}
	public void setLuotThich(int luotThich) {
		this.luotThich = luotThich;
	}
	public SanPham(Integer id, LocalDateTime thoiGianTao, int trangThai, String tenSanPham, DanhMuc danhMuc,
			BigDecimal gia, int giamGia, String moTaNgan, String moTa, String urlAvatar1, String urlAvatar2,
			String urlAvatar3, int luotXem, int luotMua, int luotThich) {
		super(id, thoiGianTao, trangThai);
		this.tenSanPham = tenSanPham;
		this.danhMuc = danhMuc;
		this.gia = gia;
		this.giamGia = giamGia;
		this.moTaNgan = moTaNgan;
		this.moTa = moTa;
		this.urlAvatar1 = urlAvatar1;
		this.urlAvatar2 = urlAvatar2;
		this.urlAvatar3 = urlAvatar3;
		this.luotXem = luotXem;
		this.luotMua = luotMua;
		this.luotThich = luotThich;
	}
	public SanPham() {
		super();
	}
	
	
	
	
}
