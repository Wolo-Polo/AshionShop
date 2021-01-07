package com.devpro.entities;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Entity
@Table(name = "taikhoan")
public class TaiKhoan extends BaseEntity implements UserDetails{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@OneToOne(cascade = CascadeType.ALL , fetch = FetchType.EAGER)
	@JoinColumn(name = "idnguoidung")
	private NguoiDung nguoiDung;
	@Column(name = "tendangnhap")
	private String tenDangNhap;
	@Column(name = "matkhau")
	private String matKhau;
	@OneToMany(mappedBy = "taiKhoan", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<BaiViet> dsBlog;
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "role_taikhoan", joinColumns = @JoinColumn(name= "idtaikhoan"), inverseJoinColumns = @JoinColumn(name = "idrole"))
	private List<Role> dsRole;
	
	@OneToMany(mappedBy = "taiKhoan", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<SanPhamTrongGioHang> sanPhamTrongGioHang;
	
	public NguoiDung getNguoiDung() {
		return nguoiDung;
	}
	public void setNguoiDung(NguoiDung nguoiDung) {
		this.nguoiDung = nguoiDung;
	}
	public String getTenDangNhap() {
		return tenDangNhap;
	}
	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	public List<BaiViet> getDsBlog() {
		return dsBlog;
	}
	public void setDsBlog(List<BaiViet> dsBlog) {
		this.dsBlog = dsBlog;
	}
	public List<Role> getDsRole() {
		return dsRole;
	}
	public void setDsRole(List<Role> dsRole) {
		this.dsRole = dsRole;
	}
	
	public List<SanPhamTrongGioHang> getSanPhamTrongGioHang() {
		return sanPhamTrongGioHang;
	}
	public void setSanPhamTrongGioHang(List<SanPhamTrongGioHang> sanPhamTrongGioHang) {
		this.sanPhamTrongGioHang = sanPhamTrongGioHang;
	}
	
	public TaiKhoan(Integer id, LocalDateTime thoiGianTao, int trangThai, NguoiDung nguoiDung, String tenDangNhap,
			String matKhau, List<BaiViet> dsBlog, List<Role> dsRole, List<SanPhamTrongGioHang> sanPhamTrongGioHang) {
		super(id, thoiGianTao, trangThai);
		this.nguoiDung = nguoiDung;
		this.tenDangNhap = tenDangNhap;
		this.matKhau = matKhau;
		this.dsBlog = dsBlog;
		this.dsRole = dsRole;
		this.sanPhamTrongGioHang = sanPhamTrongGioHang;
	}
	public TaiKhoan() {
		super();
	}
	
	//phụ vụ spring security
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return this.dsRole;
	}
	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return this.matKhau;
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return this.tenDangNhap;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	
	
	
	
}
