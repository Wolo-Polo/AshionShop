package com.devpro.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "donhang_sanpham")
public class DonHang_SanPham extends BaseEntity{
    @ManyToOne
    @JoinColumn(name = "iddonhang")
    DonHang donHang;
 
    @ManyToOne
    @JoinColumn(name = "idsanpham")
    SanPham sanPham;
    
    private int soLuong;
    private String ghiChu;
	public DonHang getDonHang() {
		return donHang;
	}
	public void setDonHang(DonHang donHang) {
		this.donHang = donHang;
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
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
    
    
}
