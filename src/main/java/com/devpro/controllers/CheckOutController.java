package com.devpro.controllers;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.devpro.dto.GioHang;
import com.devpro.dto.Item;
import com.devpro.entities.DonHang;
import com.devpro.entities.DonHang_SanPham;
import com.devpro.entities.SanPham;
import com.devpro.repositories.DonHangRepo;
import com.devpro.repositories.DonHang_SanPhamRepo;
import com.devpro.services.SanPhamService;

@Controller
public class CheckOutController {
	@Autowired
	private SanPhamService sanPhamService;
	@Autowired
	private DonHangRepo donHangRepo;
	@Autowired
	private DonHang_SanPhamRepo donHang_SanPhamRepo;
	
	@RequestMapping("/checkout")
	public String checkout(Model model, HttpServletRequest request) {
		
		HttpSession httpSession = request.getSession();
		GioHang gioHang = (GioHang) httpSession.getAttribute("GIOHANG");
		Map<SanPham, Integer> dsSanPham = new HashMap<>();
		int tongTien=0;
		if (gioHang != null) {
			List<Item> dsItem = gioHang.getItems();
			dsSanPham = new HashMap<>();
			for (Item i : dsItem) {
				SanPham sp = sanPhamService.getSanPhamById(i.getIdSanPham());
				dsSanPham.put(sp, i.getSoLuong());
				tongTien+=sp.getGia().intValue()*i.getSoLuong();
			}
			httpSession.setAttribute("sizecart", dsItem.size());
		}else {
			httpSession.setAttribute("sizecart", 0);
		}
		
		model.addAttribute("dsSanPham", dsSanPham);
		model.addAttribute("tongTien", tongTien);
		
		return "checkout";
	}
	
	@RequestMapping("/saveorder")
	public String luuDonHang(Model model, HttpServletRequest request) {
		//lưu tt ng đặt hàng
		DonHang donHang= new DonHang();
		donHang.setHoDem(request.getParameter("hoDem"));
		donHang.setTen(request.getParameter("ten"));
		donHang.setDiaChi(request.getParameter("diaChi"));
		donHang.setSoDienThoai(request.getParameter("soDienThoai"));
		donHang.setEmail(request.getParameter("email"));
		donHang.setGhiChu(request.getParameter("ghiChu"));
		donHang.setThoiGianTao(LocalDateTime.now());
		
		donHang= donHangRepo.save(donHang);
		
		HttpSession httpSession = request.getSession();
		GioHang gioHang = (GioHang) httpSession.getAttribute("GIOHANG");
		
		if (gioHang != null) {
			List<Item> dsItem = gioHang.getItems();
			for (Item i : dsItem) {
				DonHang_SanPham donHang_SanPham= new DonHang_SanPham();
				donHang_SanPham.setDonHang(donHang);
				SanPham sp = sanPhamService.getSanPhamById(i.getIdSanPham());
				donHang_SanPham.setSanPham(sp);
				donHang_SanPham.setSoLuong(i.getSoLuong());
				donHang_SanPham.setGhiChu(donHang.getGhiChu());
				donHang_SanPham.setThoiGianTao(LocalDateTime.now());
				donHang_SanPhamRepo.save(donHang_SanPham);
			}
		}else {
			
		}
		
		
		httpSession.setAttribute("GIOHANG", new GioHang());;
		
		return "redirect:/home";
	}
}
