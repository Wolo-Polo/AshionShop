package com.devpro.entities;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "lienhe")
public class LienHe extends BaseEntity {
	@Column(name = "hoten")
	private String hoTen;
	@Column(name = "email")
	private String email;
	@Column(name="website")
	private String website;
	@Column(name="message")
	private String message;
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public LienHe(int id, LocalDateTime thoiGianTao, int trangThai, String hoTen, String email, String website,
			String message) {
		super(id, thoiGianTao, trangThai);
		this.hoTen = hoTen;
		this.email = email;
		this.website = website;
		this.message = message;
	}
	public LienHe() {
		super();
	}
	
	
}
