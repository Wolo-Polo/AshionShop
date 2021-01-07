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

import com.devpro.entities.BaiViet;
import com.devpro.entities.TaiKhoan;
import com.devpro.services.BaiVietService;
import com.devpro.services.TaiKhoanService;
import com.devpro.utils.FileUtil;

@Controller
public class QuanLyBaiViet {
	@Autowired
	private BaiVietService baiVietService;
	@Autowired
	private TaiKhoanService taiKhoanService;
	
	@GetMapping(value = "/admin/blogs")
	public String getQuanLyBlogPage(Model model) {
		model.addAttribute("dsBaiViet", baiVietService.getAllBaiViet());
		
		return "admin/danhsachbaiviet";
	}
	
	@GetMapping("admin/addblog")
	public String getAddDanhMucPage(Model model) {
		model.addAttribute("baiViet", new BaiViet());
		List<TaiKhoan> dsTaiKhoan= taiKhoanService.getAllTaiKhoan();
		model.addAttribute("dsTaiKhoan", dsTaiKhoan);
		
		return "admin/luubaiviet";
	}
	
	@PostMapping("admin/saveblog")
	public String saveDanhMuc(@ModelAttribute BaiViet baiViet, @RequestParam("avatar") MultipartFile multipartFile, Model model) {
		try {
			
			if (baiViet.getId() != null) {//nếu danh mục có id thì là cập nhật
				BaiViet baiVietCu = baiVietService.getBaiVietById(baiViet.getId());
				if (!multipartFile.getOriginalFilename().equals("")) {// nếu có dấu hiệu cập nhật ảnh
					FileUtil.doDeleteFile("src/main/webapp/resources/img/blogs/" + baiVietCu.getUrlAvatar());//xóa ảnh cũ đi
					baiViet.setUrlAvatar(multipartFile.getOriginalFilename());
					FileUtil.doUploadFile("src/main/webapp/resources/img/blogs", multipartFile);//đẩy ảnh mới lên
				}else {
					baiViet.setUrlAvatar(baiVietCu.getUrlAvatar());
				}
				baiViet.setThoiGianTao(LocalDateTime.now());
			} else {
				baiViet.setThoiGianTao(LocalDateTime.now());
				baiViet.setUrlAvatar(multipartFile.getOriginalFilename());
				FileUtil.doUploadFile("src/main/webapp/resources/img/categories", multipartFile);
			}
			
			baiVietService.saveBaiViet(baiViet);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "Lưu thất bại!");
			model.addAttribute("baiViet", new BaiViet());
			return "admin/luubaiviet";
		}

		model.addAttribute("message", "Lưu thành công!");
		model.addAttribute("baiViet", new BaiViet());
		return "admin/luubaiviet";
	}
	
	@GetMapping("admin/deleteblog/{id}")
	public String deleteDanhMuc(@PathVariable("id") String id) {
		try {
			BaiViet baiViet = baiVietService.getBaiVietById(Integer.valueOf(id));
			FileUtil.doDeleteFile("src/main/webapp/resources/img/blogs/" + baiViet.getUrlAvatar());
			baiVietService.deleteBaiViet(Integer.valueOf(id));
		}catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return "redirect:/admin/blogs";
	}
	
	@GetMapping("admin/editblog/{id}")
	public String getEditDanhMucPage(@PathVariable("id") String id, Model model) {
		model.addAttribute("baiViet", baiVietService.getBaiVietById(Integer.valueOf(id)));
		List<TaiKhoan> dsTaiKhoan= taiKhoanService.getAllTaiKhoan();
		model.addAttribute("dsTaiKhoan", dsTaiKhoan);
		
		return "admin/luubaiviet";
	}
}
