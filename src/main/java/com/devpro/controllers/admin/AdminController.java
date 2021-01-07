package com.devpro.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	@GetMapping(value = {"/admin"})
	public String getAdminPage() {
		
		return "admin/index";
	}
}
