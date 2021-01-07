package com.devpro.controllers;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.devpro.services.BaiVietService;
import com.devpro.services.DanhMucService;
import com.devpro.services.SanPhamService;

@Controller
public class MainController {

	@Autowired
	private DanhMucService danhMucService;
	@Autowired
	private SanPhamService sanPhamService;
	@Autowired
	private BaiVietService baiVietService;
	
	@RequestMapping(value = {"/", "home"})
	public String getHomePage(Model model) {
		model.addAttribute("womenfashion", danhMucService.getDanhMucByTenDanhMuc("Thời trang nữ"));
		model.addAttribute("menfashion", danhMucService.getDanhMucByTenDanhMuc("Thời trang nam"));
		model.addAttribute("kidfashion", danhMucService.getDanhMucByTenDanhMuc("Thời trang trẻ em"));
		model.addAttribute("cosmetics", danhMucService.getDanhMucByTenDanhMuc("Mĩ phẩm"));
		model.addAttribute("accessories", danhMucService.getDanhMucByTenDanhMuc("Phụ kiện"));
		
		model.addAttribute("dsSanPham", sanPhamService.getAllSanPham());//get limit
		
		model.addAttribute("dsSanPhamHot", sanPhamService.getDanhSachSanPhamHot());
		model.addAttribute("dsSanPhamYeuThich", sanPhamService.getDanhSachSanPhamYeuThich());
		model.addAttribute("dsSanPhamGiamGia", sanPhamService.getDanhSachSanPhamGiamGia());
		
		model.addAttribute("dsBaiViet", baiVietService.getAllBaiViet());
		
		model.addAttribute("homNay", LocalDate.now());
		
		
		return "index";
	}
	
	@RequestMapping("login")
	public String getLoginPage() {
		return "login";
	}
	@RequestMapping("register")
	public String getRegisterPage() {
		return "register";
	}
}
