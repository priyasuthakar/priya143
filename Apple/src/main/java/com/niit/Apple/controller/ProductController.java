package com.niit.Apple.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.appleproduct.dao.CatagoryDAO;
import com.niit.appleproduct.dao.ProductDAO;
import com.niit.appleproduct.dao.SupplierDAO;
import com.niit.appleproduct.models.Catagory;
import com.niit.appleproduct.models.FileUpload;
import com.niit.appleproduct.models.Product;
import com.niit.appleproduct.models.Supplier;

@Controller
public class ProductController {

	String path = "D:\\priya1\'Files";
	
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private Product product;
	@Autowired
	private CatagoryDAO catagoryDAO;
	@Autowired
	private Catagory catagory;
	/*@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private Supplier supplier;*/
	
	@RequestMapping("/product")
	public String product11(Model model){
		model.addAttribute("product", new Product());
		model.addAttribute("catagory", new Catagory());
		//model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList",this.productDAO.list());
		model.addAttribute("catagoryList",this.catagoryDAO.list());
		//model.addAttribute("supplierList",this.supplierDAO.list());
		return "product";
	}
	
	@RequestMapping(value ="product",method=RequestMethod.POST)
	public String addproduct(@ModelAttribute("product") Product product){
		//Catagory catgory=catagoryDAO.getByName(product.getCatagory().getName());
		//Supplier supplier=SupplierDAO.getByName(product.getSupplier().getName());
		//product.setCatagory(catagory);
		//product.setSupplier(supplier);
		//product.setCatagory_id(catagory.getId());
		//product.setSupplier_id(supplier.getId());
		productDAO.saveOrUpdate(product);
		MultipartFile file=product.getImage();
		FileUpload.upload(path, file, product.getId()+".jpg");
		return "redirect:/product";
	}
	
	/*@RequestMapping(value ="/view",method=RequestMethod.POST)
	public ModelAndView addproducts(@Valid @ModelAttribute("product") Product product, BindingResult result) {
		ModelAndView mv = new ModelAndView();
		if(result.hasErrors()) {
			mv.addObject("product", "product") ;
		}
		else {
		productDAO.saveOrUpdate(product);	
		
		mv.addObject("file",file);
		mv.addObject("manageproducts", "manageproducts");
		mv.addObject("product", product);
		mv.addObject("productList",this.productDAO.list());
		}
		
		return mv;	
	}
	*//*
	
	@RequestMapping(value ="/product",method=RequestMethod.POST)
	public ModelAndView  productadd(@ModelAttribute("product") Product product) {
	productDAO.save(product);
		ModelAndView mv = new ModelAndView("/view");
		mv.addObject("productList",productDAO.list());
		return mv;
	}
	
	@RequestMapping(value ="/add2/delete/{id}")
	public String deleteproduct(@PathVariable("id") int id,ModelMap model) {
		productDAO.delete(id);
		model.addAttribute("productList",productDAO.list());
		return "view";
	}
	
	@RequestMapping(value ="/add2/edit/{id}")
	public String editproduct(@PathVariable("id") int id,Model model  ) {
		product = productDAO.get(id); 
		model.addAttribute("product", product);
		model.addAttribute("editproduct", "Edit product");  
		return "edit2";
	}
	
	@RequestMapping("/edit2")
	public ModelAndView  productedit(@ModelAttribute("product") Product product) {
     productDAO.update(product);
		ModelAndView mv = new ModelAndView("/view");
		mv.addObject("productList",productDAO.list());
		return mv;
	}
	
*/
	}
