package com.devpro.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.devpro.dto.GioHang;
import com.devpro.dto.Item;
import com.devpro.entities.SanPham;
import com.devpro.services.SanPhamService;
@Controller
public class GioHangController {
	@Autowired
	private SanPhamService sanPhamService;
	
	@RequestMapping(value = {"cart"})
	public String getCartPage(Model model, HttpServletRequest request) {
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
		
		return "giohang";
	}
	
	@PostMapping(value = "/cart/additem")
	public ResponseEntity<String> addItemToCart(@RequestBody Item item, final Model model,
			final HttpServletRequest request, final HttpServletResponse response) {

		HttpSession httpSession = request.getSession();

		GioHang gioHang=null;
		
		if (httpSession.getAttribute("GIOHANG") != null) {
			gioHang = (GioHang) httpSession.getAttribute("GIOHANG");
		} else {
			gioHang = new GioHang();
			httpSession.setAttribute("GIOHANG", gioHang);
		}
		
		List<Item> dsItem = gioHang.getItems();
		boolean isExists = false;

		for (Item i : dsItem) {
			if (i.getIdSanPham().intValue() == item.getIdSanPham().intValue()) {
				isExists = true;
				i.setSoLuong(item.getSoLuong() + 1);
			}
		}

		if(!isExists) {
			gioHang.getItems().add(item);
		}
		
		httpSession.setAttribute("sizecart", gioHang.getItems().size());
		
		return ResponseEntity.ok(String.valueOf(gioHang.getItems().size()));
	}
	
	
	
	@PostMapping("/cart/reload")
	public String reloadCart(Model model, HttpServletRequest request) {
		
		Integer idsanphamxoa=null;
		String idspx=request.getParameter("idsanphamxoa");
		if(idspx!=null && !idspx.equalsIgnoreCase("") && !idspx.equalsIgnoreCase(" ")) {
			String xoa=request.getParameter("idsanphamxoa");
			idsanphamxoa=Integer.valueOf(xoa);
		}
		HttpSession httpSession = request.getSession();
		GioHang gioHang = (GioHang) httpSession.getAttribute("GIOHANG");
		List<Item> listItem = gioHang.getItems();
		for (int i = 0; i < listItem.size(); i++) {
			if (idsanphamxoa != null) {
				if (listItem.get(i).getIdSanPham()==idsanphamxoa) {
					listItem.remove(i);
					continue;
				}
			}
			if(request.getParameter(String.valueOf(listItem.get(i).getIdSanPham()))!=null) {
				listItem.get(i).setSoLuong(Integer.valueOf( request.getParameter(String.valueOf(listItem.get(i).getIdSanPham()))));
			}
		}
		gioHang.setItems(listItem);
		httpSession.setAttribute("GIOHANG", gioHang);
		httpSession.setAttribute("sizecart", gioHang.getItems().size());
		
		return "redirect:/cart";
	}
}
