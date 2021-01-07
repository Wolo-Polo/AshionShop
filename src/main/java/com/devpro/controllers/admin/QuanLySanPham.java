package com.devpro.controllers.admin;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.entities.DanhMuc;
import com.devpro.entities.SanPham;
import com.devpro.services.DanhMucService;
import com.devpro.services.SanPhamService;
import com.devpro.utils.FileUtil;

@Controller
public class QuanLySanPham {
	@Autowired
	private SanPhamService sanPhamService;
	@Autowired
	private DanhMucService danhMucService;
	
	@GetMapping("/admin/products")
	public String getQuanLySanPhamPage(Model model) {
		List<SanPham> dsSanPham= sanPhamService.getAllSanPham();
		model.addAttribute("dsSanPham", dsSanPham);
		
		return "admin/danhsachsanpham";
	}
	
	@GetMapping("/admin/addproduct")
	public String getAddSanPhamPage(Model model) {
		model.addAttribute("sanPham", new SanPham());
		
		List<DanhMuc> dsDanhMuc= danhMucService.getAllDanhMuc();
		model.addAttribute("dsDanhMuc", dsDanhMuc);
		
		return "admin/luusanpham";
	}
	
	@PostMapping("admin/saveproduct")
	public String saveDanhMuc(@ModelAttribute SanPham sanPham, @RequestParam("avatar1") MultipartFile multipartFile1, Model model,
			@RequestParam("avatar2") MultipartFile multipartFile2, @RequestParam("avatar3") MultipartFile multipartFile3) {
		try {
			
			if (sanPham.getId() != null) {//nếu danh mục có id thì là cập nhật
				SanPham sanPhamCu = sanPhamService.getSanPhamById(sanPham.getId());
				//ảnh 1
				if (!multipartFile1.getOriginalFilename().equals("")) {// nếu có dấu hiệu cập nhật ảnh
					FileUtil.doDeleteFile("src/main/webapp/resources/img/products/" + sanPhamCu.getUrlAvatar1());//xóa ảnh cũ đi
					sanPham.setUrlAvatar1(multipartFile1.getOriginalFilename());
					FileUtil.doUploadFile("src/main/webapp/resources/img/products", multipartFile1);//đẩy ảnh mới lên
				}else {
					sanPham.setUrlAvatar1(sanPhamCu.getUrlAvatar1());
				}
				//ảnh 2
				if (!multipartFile2.getOriginalFilename().equals("")) {// nếu có dấu hiệu cập nhật ảnh
					FileUtil.doDeleteFile("src/main/webapp/resources/img/products/" + sanPhamCu.getUrlAvatar2());//xóa ảnh cũ đi
					sanPham.setUrlAvatar2(multipartFile2.getOriginalFilename());
					FileUtil.doUploadFile("src/main/webapp/resources/img/products", multipartFile2);//đẩy ảnh mới lên
				}else {
					sanPham.setUrlAvatar2(sanPhamCu.getUrlAvatar2());
				}
				//ảnh 3
				if (!multipartFile3.getOriginalFilename().equals("")) {// nếu có dấu hiệu cập nhật ảnh
					FileUtil.doDeleteFile("src/main/webapp/resources/img/products/" + sanPhamCu.getUrlAvatar3());//xóa ảnh cũ đi
					sanPham.setUrlAvatar3(multipartFile3.getOriginalFilename());
					FileUtil.doUploadFile("src/main/webapp/resources/img/products", multipartFile3);//đẩy ảnh mới lên
				}else {
					sanPham.setUrlAvatar3(sanPhamCu.getUrlAvatar3());
				}
				sanPham.setThoiGianTao(LocalDateTime.now());
			} else {
				sanPham.setThoiGianTao(LocalDateTime.now());
				sanPham.setUrlAvatar1(multipartFile1.getOriginalFilename());
				FileUtil.doUploadFile("src/main/webapp/resources/img/products", multipartFile1);
				
				sanPham.setUrlAvatar2(multipartFile2.getOriginalFilename());
				FileUtil.doUploadFile("src/main/webapp/resources/img/products", multipartFile2);
				
				sanPham.setUrlAvatar3(multipartFile3.getOriginalFilename());
				FileUtil.doUploadFile("src/main/webapp/resources/img/products", multipartFile3);
			}
			
			sanPhamService.saveSanPham(sanPham);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "Lưu thất bại!");
			model.addAttribute("sanPham", new SanPham());
			
			List<DanhMuc> dsDanhMuc= danhMucService.getAllDanhMuc();
			model.addAttribute("dsDanhMuc", dsDanhMuc);
			
			return "admin/luusanpham";
		}

		model.addAttribute("message", "Lưu thành công!");
		model.addAttribute("sanPham", new SanPham());
		
		List<DanhMuc> dsDanhMuc= danhMucService.getAllDanhMuc();
		model.addAttribute("dsDanhMuc", dsDanhMuc);
		
		return "admin/luusanpham";
	}
	
	@GetMapping("admin/deleteproduct/{id}")
	public String deleteSanPham(@PathVariable("id") String id) {
		try {
			SanPham sanPham = sanPhamService.getSanPhamById(Integer.valueOf(id));
			FileUtil.doDeleteFile("src/main/webapp/resources/img/products/" + sanPham.getUrlAvatar1());
			FileUtil.doDeleteFile("src/main/webapp/resources/img/products/" + sanPham.getUrlAvatar2());
			FileUtil.doDeleteFile("src/main/webapp/resources/img/products/" + sanPham.getUrlAvatar3());
			
			sanPhamService.deleteSanPham(Integer.valueOf(id));
		}catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return "redirect:/admin/products";
	}
	
	@GetMapping("admin/editproduct/{id}")
	public String getEditSanPhamPage(@PathVariable("id") String id, Model model) {
		model.addAttribute("sanPham", sanPhamService.getSanPhamById(Integer.valueOf(id)));
		
		List<DanhMuc> dsDanhMuc= danhMucService.getAllDanhMuc();
		model.addAttribute("dsDanhMuc", dsDanhMuc);
		
		return "admin/luusanpham";
	}
}
