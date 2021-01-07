package com.devpro.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.devpro.services.BaiVietService;

@Controller
public class BaiVietController {
	@Autowired
	private BaiVietService baiVietService;
	
	@GetMapping("/blogs")
	public String getDanhSachBaiVietPage(Model model) {
		model.addAttribute("dsBaiViet", baiVietService.getAllBaiViet());
		
		return "danhsachbaiviet";
	}
	
	@GetMapping("/blog/{id}")
	public String getChiTietBaiVietPage(Model model, @PathVariable("id") String id) {
		model.addAttribute("baiViet", baiVietService.getBaiVietById(Integer.valueOf(id)));
		return "chitietbaiviet";
	}
}
