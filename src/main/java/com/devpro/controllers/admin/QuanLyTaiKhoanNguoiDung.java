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

import com.devpro.entities.TaiKhoan;
import com.devpro.services.TaiKhoanService;
import com.devpro.utils.FileUtil;

@Controller
public class QuanLyTaiKhoanNguoiDung {
	
	@Autowired
	private TaiKhoanService taiKhoanService;
	
	@GetMapping(value = "/admin/useraccounts")
	public String getQuanLyTaiKhoanNguoiDungPage(Model model) {
		List<TaiKhoan> dsTaiKhoan= taiKhoanService.getAllTaiKhoan();
		model.addAttribute("dsTaiKhoan", dsTaiKhoan);
		
		return "admin/danhsachtaikhoannguoidung";
	}
	
	@GetMapping(value = "/admin/adduseraccount")
	public String getAddUserAccountPage(Model model) {
		model.addAttribute("taiKhoan", new TaiKhoan());
		
		return "admin/luutaikhoannguoidung";
	}
	
	@GetMapping(value = "/admin/edituseraccount/{id}")
	public String getEditUserAccountPage(Model model, @PathVariable("id") String id) {
		model.addAttribute("taiKhoan", taiKhoanService.getTaiKhoanById(Integer.valueOf(id)));
		
		return "admin/luutaikhoannguoidung";
	}
	
	@PostMapping("admin/saveuseraccount")
	public String saveDanhMuc(@ModelAttribute TaiKhoan taiKhoan, @RequestParam("avatar") MultipartFile multipartFile, Model model) {
		try {
			
			if (taiKhoan.getId() != null) {//nếu danh mục có id thì là cập nhật
				TaiKhoan taiKhoanCu = taiKhoanService.getTaiKhoanById(taiKhoan.getId());
				if (!multipartFile.getOriginalFilename().equals("")) {// nếu có dấu hiệu cập nhật ảnh
					FileUtil.doDeleteFile("src/main/webapp/resources/img/users/" + taiKhoanCu.getNguoiDung().getUrlAvatar());//xóa ảnh cũ đi
					taiKhoan.getNguoiDung().setUrlAvatar(multipartFile.getOriginalFilename());
					FileUtil.doUploadFile("src/main/webapp/resources/img/users", multipartFile);//đẩy ảnh mới lên
				}else {
					taiKhoan.getNguoiDung().setUrlAvatar(taiKhoanCu.getNguoiDung().getUrlAvatar());
				}
				taiKhoan.setThoiGianTao(LocalDateTime.now());
				taiKhoan.getNguoiDung().setThoiGianTao(LocalDateTime.now());
			} else {
				taiKhoan.setThoiGianTao(LocalDateTime.now());
				taiKhoan.getNguoiDung().setThoiGianTao(LocalDateTime.now());
				taiKhoan.getNguoiDung().setUrlAvatar(multipartFile.getOriginalFilename());
				FileUtil.doUploadFile("src/main/webapp/resources/img/users", multipartFile);
			}
			
			taiKhoanService.saveTaiKhoan(taiKhoan);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "Lưu thất bại!");
			model.addAttribute("taiKhoan", new TaiKhoan());
			return "admin/luudanhmuc";
		}

		model.addAttribute("message", "Lưu thành công!");
		model.addAttribute("taiKhoan", new TaiKhoan());
		return "admin/luutaikhoannguoidung";
	}
	
	@GetMapping("admin/deleteuseraccount/{id}")
	public String deleteTaiKhoanNguoiDung(@PathVariable("id") String id) {
		try {
			TaiKhoan taiKhoan = taiKhoanService.getTaiKhoanById(Integer.valueOf(id));
			FileUtil.doDeleteFile("src/main/webapp/resources/img/users/" + taiKhoan.getNguoiDung().getUrlAvatar());
			
			taiKhoanService.deleteTaiKhoan(Integer.valueOf(id));
		}catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return "redirect:/admin/useraccounts";
	}
}
