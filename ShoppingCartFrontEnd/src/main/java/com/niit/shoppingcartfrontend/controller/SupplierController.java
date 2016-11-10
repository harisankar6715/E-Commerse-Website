package com.niit.shoppingcartfrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcartfrontend.util.Util;

@Controller
public class SupplierController {
	
	@Autowired
	Supplier supplier;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping(value = "/Suppliers", method = RequestMethod.GET)
	public String listCategories(Model model) {
		model.addAttribute("isAdminClickedSupplier", "True");
		model.addAttribute("supplier", supplier);
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "home";
	}
	
	@RequestMapping(value = "/to_add_supplier", method = RequestMethod.POST)
	public String addSuppliers(@ModelAttribute("supplier") Supplier supplier) {
		
		String newID=Util.removeComma(supplier.getId());
		supplier.setId(newID);
		supplierDAO.saveOrUpdate(supplier);

		return "redirect:/suppliers";
	}
	
	@RequestMapping(value = "supplier/remove/{id}")
	public String deleteSuppliers(@PathVariable("id") String id,ModelMap model) {
		try {
			supplierDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		return "redirect:/Suppliers";
	}
	
	@RequestMapping(value = "supplier/edit/{id}")
	public String editSuppliers(@PathVariable("id") String id,ModelMap model) {
		supplier=supplierDAO.get(id);
		model.addAttribute("supplier", supplier);
		model.addAttribute("supplierList",supplierDAO.list());

		return "redirect:/Suppliers";
	}
	
	
	
}


