package com.devpro.controllers;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.devpro.entities.DanhMuc;
import com.devpro.services.DanhMucService;
import com.devpro.services.SanPhamService;

@Controller
public class SanPhamController {
	@Autowired
	private DanhMucService danhMucService;
	@Autowired
	private SanPhamService sanPhamService;
	
	@RequestMapping(value = {"shop"})
	public String getDanhsachsanphamPage(Model model) {
		
		model.addAttribute("dsSanPham", sanPhamService.getAllSanPham());//get limit
		
		List<DanhMuc> dsDanhMucCha=danhMucService.getDanhMucByDanhMucCha(null);
		model.addAttribute("dsDanhMucCha", dsDanhMucCha);
		
		Map<DanhMuc, List<DanhMuc>> dsDanhMucCon= new HashMap<>(); 
		for(DanhMuc i: dsDanhMucCha) {
			dsDanhMucCon.put(i, danhMucService.getDanhMucByDanhMucCha(danhMucService.getDanhMucById(i.getId())));
		}
		model.addAttribute("dsDanhMuc", dsDanhMucCon);
		model.addAttribute("homNay", LocalDate.now());
		
		return "danhsachsanpham";
	}
	@RequestMapping(value = {"shop/category/{id}"})
	public String getDanhsachsanphamPageVoiDanhMuc(Model model, @PathVariable("id") String idDanhMuc) {
		if(idDanhMuc.equals("")) {
			model.addAttribute("dsSanPham", sanPhamService.getAllSanPham());//get limit
		}else {
			model.addAttribute("dsSanPham", sanPhamService.getSanPhamByIdDanhMuc(Integer.valueOf(idDanhMuc)));//get limit
		}
		
		List<DanhMuc> dsDanhMucCha=danhMucService.getDanhMucByDanhMucCha(null);
		model.addAttribute("dsDanhMucCha", dsDanhMucCha);
		
		Map<DanhMuc, List<DanhMuc>> dsDanhMucCon= new HashMap<>(); 
		for(DanhMuc i: dsDanhMucCha) {
			dsDanhMucCon.put(i, danhMucService.getDanhMucByDanhMucCha(i));
		}
		model.addAttribute("dsDanhMuc", dsDanhMucCon);
		model.addAttribute("homNay", LocalDate.now());
		
		
		return "danhsachsanpham";
	}
	
	@RequestMapping(value = {"product/{id}"})
	public String getChiTietSanPhamPage(Model model, @PathVariable("id") String id) {
		model.addAttribute("sanPham", sanPhamService.getSanPhamById(Integer.valueOf(id)));
		
		return "chitietsanpham";
	}
}
