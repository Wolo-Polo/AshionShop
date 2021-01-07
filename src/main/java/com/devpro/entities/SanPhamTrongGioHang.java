package com.devpro.entities;

import java.time.LocalDateTime;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "sanphamtronggiohang")
public class SanPhamTrongGioHang extends BaseEntity{
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idtaikhoan")
	private TaiKhoan taiKhoan;
	
	@OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "idsanpham")
	private SanPham sanPham;
	
	@Column(name = "soluong")
	private int soLuong;

	public TaiKhoan getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(TaiKhoan taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public SanPhamTrongGioHang(Integer id, LocalDateTime thoiGianTao, int trangThai, TaiKhoan taiKhoan, SanPham sanPham,
			int soLuong) {
		super(id, thoiGianTao, trangThai);
		this.taiKhoan = taiKhoan;
		this.sanPham = sanPham;
		this.soLuong = soLuong;
	}

	public SanPhamTrongGioHang() {
		super();
	}
	
	
	
}
