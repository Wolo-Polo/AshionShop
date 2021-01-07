package com.devpro.dto;

import java.util.ArrayList;
import java.util.List;

public class GioHang {
	private List<Item> items= new ArrayList<Item>();

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public GioHang(List<Item> items) {
		super();
		this.items = items;
	}

	public GioHang() {
		super();
	}

	
}
