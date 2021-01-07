package com.devpro.dto;

public class Item {
	private Integer idSanPham;
	private int soLuong;
	public Integer getIdSanPham() {
		return idSanPham;
	}
	public void setIdSanPham(Integer idSanPham) {
		this.idSanPham = idSanPham;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public Item(Integer idSanPham, int soLuong) {
		super();
		this.idSanPham = idSanPham;
		this.soLuong = soLuong;
	}
	public Item() {
		super();
	}
	
	
	
}
