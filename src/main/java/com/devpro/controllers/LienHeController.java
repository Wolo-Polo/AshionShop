package com.devpro.controllers;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.entities.LienHe;
import com.devpro.services.LienHeService;

@Controller
public class LienHeController {
	
	@Autowired
	private LienHeService lienHeService; 
	
	@RequestMapping(value = {"contact"}, method = RequestMethod.GET)
	public String getContactPage() {
		
		return "contact";
	}
	
	@PostMapping(value = "contact")
	public String saveContact(Model model,HttpServletRequest request) {
		LienHe lienHe= new LienHe();
		lienHe.setHoTen(request.getParameter("hoten"));
		lienHe.setEmail(request.getParameter("email"));
		lienHe.setWebsite(request.getParameter("website"));
		lienHe.setMessage(request.getParameter("message"));
		lienHe.setThoiGianTao(LocalDateTime.now());
		LienHe lh=lienHeService.saveLienHe(lienHe);
		if(lh!=null) {
			model.addAttribute("message", "The your message is sent to Administrator.");
			return "contact";
		}else {
			model.addAttribute("message", "Your message is corrupted when sending to Administrator.");
			return "contact";
		}
	}
}
