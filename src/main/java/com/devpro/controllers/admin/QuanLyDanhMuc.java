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
import com.devpro.services.DanhMucService;
import com.devpro.utils.FileUtil;

@Controller
public class QuanLyDanhMuc {
	@Autowired
	private DanhMucService danhMucService;
	
	@GetMapping("admin/categories")
	public String getQuanLyDanhMucPage(Model model) {
		List<DanhMuc> dsDanhMuc= danhMucService.getAllDanhMuc();
		model.addAttribute("dsDanhMuc", dsDanhMuc);
		
		return "admin/danhsachdanhmuc";
	}
	
	@GetMapping("admin/addcategory")
	public String getAddDanhMucPage(Model model) {
		model.addAttribute("danhMuc", new DanhMuc());
		List<DanhMuc> dsDanhMuc= danhMucService.getAllDanhMuc();
		model.addAttribute("dsDanhMuc", dsDanhMuc);
		
		return "admin/luudanhmuc";
	}
	
	@PostMapping("admin/savecategory")
	public String saveDanhMuc(@ModelAttribute DanhMuc danhMuc, @RequestParam("avatar") MultipartFile multipartFile, Model model) {
		try {
			
			if (danhMuc.getId() != null) {//nếu danh mục có id thì là cập nhật
				DanhMuc danhMucCu = danhMucService.getDanhMucById(danhMuc.getId());
				if (!multipartFile.getOriginalFilename().equals("")) {// nếu có dấu hiệu cập nhật ảnh
					FileUtil.doDeleteFile("src/main/webapp/resources/img/categories/" + danhMucCu.getUrlAvatar());//xóa ảnh cũ đi
					danhMuc.setUrlAvatar(multipartFile.getOriginalFilename());
					FileUtil.doUploadFile("src/main/webapp/resources/img/categories", multipartFile);//đẩy ảnh mới lên
				}else {
					danhMuc.setUrlAvatar(danhMucCu.getUrlAvatar());
				}
				danhMuc.setThoiGianTao(LocalDateTime.now());
			} else {
				danhMuc.setThoiGianTao(LocalDateTime.now());
				danhMuc.setUrlAvatar(multipartFile.getOriginalFilename());
				FileUtil.doUploadFile("src/main/webapp/resources/img/categories", multipartFile);
			}
			
			danhMucService.saveDanhMuc(danhMuc);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "Lưu thất bại!");
			model.addAttribute("danhMuc", new DanhMuc());
			return "admin/luudanhmuc";
		}

		model.addAttribute("message", "Lưu thành công!");
		model.addAttribute("danhMuc", new DanhMuc());
		return "admin/luudanhmuc";
	}
	
	@GetMapping("admin/deletecategory/{id}")
	public String deleteDanhMuc(@PathVariable("id") String id) {
		try {
			DanhMuc danhMuc = danhMucService.getDanhMucById(Integer.valueOf(id));
			FileUtil.doDeleteFile("src/main/webapp/resources/img/categories/" + danhMuc.getUrlAvatar());
			danhMucService.deleteDanhMuc(Integer.valueOf(id));
		}catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return "redirect:/admin/categories";
	}
	
	@GetMapping("admin/editcategory/{id}")
	public String getEditDanhMucPage(@PathVariable("id") String id, Model model) {
		model.addAttribute("danhMuc", danhMucService.getDanhMucById(Integer.valueOf(id)));
		List<DanhMuc> dsDanhMuc= danhMucService.getAllDanhMuc();
		model.addAttribute("dsDanhMuc", dsDanhMuc);
		
		return "admin/luudanhmuc";
	}
}
