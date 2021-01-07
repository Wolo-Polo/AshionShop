package com.devpro.entities;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public class BaseEntity {
	@Id // xác định đây là khoá chính.
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto-increment.
	@Column(name = "id")
	protected Integer id;
	
	@Column(name = "thoigiantao")
	protected LocalDateTime thoiGianTao;
	
	@Column(name = "trangthai")
	protected int trangThai=1;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public LocalDateTime getThoiGianTao() {
		return thoiGianTao;
	}

	public void setThoiGianTao(LocalDateTime thoiGianTao) {
		this.thoiGianTao = thoiGianTao;
	}

	public int getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}

	public BaseEntity(Integer id, LocalDateTime thoiGianTao, int trangThai) {
		super();
		this.id = id;
		this.thoiGianTao = thoiGianTao;
		this.trangThai = trangThai;
	}

	public BaseEntity() {
		super();
	}

}
