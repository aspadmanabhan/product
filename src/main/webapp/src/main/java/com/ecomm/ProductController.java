package com.ecomm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping("/all")
	public ModelAndView showall()
	{
		ModelAndView obj=new ModelAndView("all");
		return obj;
	}
}
