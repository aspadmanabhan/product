package com.ecom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
import com.ecom.Product;
import com.google.gson.Gson;
@Controller

public class ProductController {
	@RequestMapping("/")
	public ModelAndView showMessage()
	{
	ModelAndView obj=new ModelAndView("home");
	return obj;
	}
	@RequestMapping("/Login")
public ModelAndView showLogin()
{
		
	ModelAndView obj=new ModelAndView("Login");
	return obj;
}
	@RequestMapping("/Register")
	public ModelAndView showRegister()
	{
		ModelAndView obj=new ModelAndView("Register");
		return obj;
	}
	@RequestMapping("/first")
	public ModelAndView showFirst()
	{
		ModelAndView obj=new ModelAndView("first");
		return obj;
	}
	@RequestMapping(value="/all",method=RequestMethod.GET,produces="application/json")
	
	public @ResponseBody String showall()
	{
		java.util.List prlist=service.getAllProducts();
		/*Product p1=new Product();
		p1.setId(1);
		p1.setName("2 days 3 nights tour package for ooty");
				p1.setPrice(13000);
				p1.setQuantity(4);
		prlist.add(p1);
		Product p2=new Product();
	p2.setId(2);
		p2.setName("four nights five days package for shimla");
				p2.setPrice(18000);
				p2.setQuantity(3 );
		prlist.add(p2);
		Product p3=new Product();
		p3.setId(3);
		p3.setName("seven nights 8 days package for kashmir");
				p3.setPrice(19000);
				p3.setQuantity(8);
		prlist.add(p3);*/
		Gson g=new Gson();
		String str=g.toJson(prlist);
		ModelAndView obj=new ModelAndView("all");
		
		return str;
	}
		@Autowired
		ProductService service;
		@RequestMapping("/sproduct")
		public String createSample()
		{
			Product obj=new Product();
			obj.setName("3 days stay at kull manali");
			obj.setPrice(2000);
			obj.setQuantity(3);
			return "success";
		}
		
	@RequestMapping("/sample")
	public ModelAndView showsample()
	{
		ModelAndView obj=new ModelAndView("sample");
		return obj;
	}
	@RequestMapping("/data")
	public ModelAndView showdata()
	{
		ModelAndView obj=new ModelAndView("data");
		return obj;
	}
	@RequestMapping("/viewdata")
	public ModelAndView viewdata()
	{
		ModelAndView obj=new ModelAndView("viewdata");
		return obj;
	}
	@RequestMapping("/edit")
	public ModelAndView edit()
	{
		ModelAndView obj=new ModelAndView("edit");
		return obj;
	}
	@RequestMapping("/delete")
	public ModelAndView delete()
	{
		ModelAndView obj=new ModelAndView("delete");
		return obj;
	}
	@RequestMapping("/AddProduct")
	public ModelAndView addproduct()
	{
		
		ModelAndView obj=new ModelAndView("AddProduct");
		System.out.println("reached here");
		return obj;
	}
	@ModelAttribute("add")
	public Product construct()
	{
	return new Product();	
	}
	@RequestMapping(value="/AddProduct",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("add")	Product product)
	{
		System.out.println(product.getName());
		System.out.println("price is "+product.getPrice());
		System.out.println("quantity "+product.getQuantity());
		service.createProduct(product);	
	
	return "/MyProduct/AddProduct";
	}
	@ModelAttribute("update")
	public Product update()
	{
		 return new Product();
	}
	@RequestMapping("/UpdateProduct")
	public ModelAndView updateProduct()
	{
		ModelAndView obj=new ModelAndView("UpdateProduct");
		return obj;
	}
	@RequestMapping(value="/UpdateProduct",method=RequestMethod.POST)
	public String updateProduct(@ModelAttribute("update") Product product)
	{
	service.updateProduct(product);	
  return "updated";
	}
	@ModelAttribute("delete")
	public Product deleteProduct()
	{
		return new Product();
	}
	@RequestMapping("/DeleteProduct")
	public ModelAndView delteinfo()
	{
		ModelAndView obj=new ModelAndView("DeleteProduct");
		return obj;
	}
     @RequestMapping(value="/DeleteProduct" ,method=RequestMethod.POST)
	 public ModelAndView delteinfo(@ModelAttribute("delete") Product p)
	 {
   service.deleteProduct(p);    
   ModelAndView obj=new ModelAndView("DeleteProduct");
   return obj;
	 }
}
