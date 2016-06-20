package com.ecom;



import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;


@Controller
public class ProductController {
	@Autowired
	PersonalComputerService service;
	@RequestMapping("/")
	public ModelAndView showhome()
	{
		ModelAndView obj=new ModelAndView("home");
		return obj;
	}
	@RequestMapping("/Login")
	public ModelAndView showLogin()
	{
		return new ModelAndView("Login");
	}
	@RequestMapping("/register")
	public ModelAndView showregistration()
	{
		return new ModelAndView("register");
	}

	@ModelAttribute("sendforupdate")
	public PersonalComputer sendforupdate()
	{
		return new PersonalComputer();
	}
	@RequestMapping(value="/sendforupdate",method=RequestMethod.POST,produces="application/json")
	
	public @ResponseBody String sendupdate(@ModelAttribute("sendforupdate")PersonalComputer p)
	{
		
		List list=service.getSinglePersonalComputer(p.getProductId());
		Gson g=new Gson();
		String str=g.toJson(list);
			return str;
		
		
	}
	@ModelAttribute("update")
public PersonalComputer updateProduct()
{
		return new PersonalComputer();
}
	@ModelAttribute("add")
public PersonalComputer addProduct()
{
	return new PersonalComputer();
}
	@RequestMapping(value="/addimage",method=RequestMethod.POST)
	public ModelAndView uploadimage(@RequestParam("name")String name,@RequestParam("file")MultipartFile file)
	{
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File("F:\\myworkspace3\\com.productapp\\src\\main\\webapp\\resources\\images");
				
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				

		
			} catch (Exception e) {

				System.out.println(e);
			}
		} else {
			
		}
		
		ModelAndView obj=new ModelAndView("addimage");
		return obj;
	}

	@RequestMapping("/addimage")
	public ModelAndView saveimage()
	{
		ModelAndView obj=new ModelAndView("addimage");
		return obj;

	}
	@RequestMapping(value="/addpc",method=RequestMethod.POST)

public ModelAndView addPersonalComputer(@ModelAttribute("add") PersonalComputer p)
{
	
		ModelAndView obj=new ModelAndView("addpc");
	
	String url="/resources/images/"+p.getImageUrl();
	p.setImageUrl(url);
System.out.println(p.getImageUrl());

service.addPersonalComputer(p);

obj.addObject("message","pc added successfully");
	return obj;
}


@RequestMapping("/addpc")
public ModelAndView addPersonalComputer()
{
ModelAndView obj=new ModelAndView("addpc");
return obj;
}

@RequestMapping(value="/updatepc",method=RequestMethod.GET)
public ModelAndView updatePersonalComputer(@RequestParam("id") int i)
{
ModelAndView obj=new ModelAndView("updatepc");
List list=service.getSinglePersonalComputer(i);
obj.addObject("data",list);
return obj;
}
@RequestMapping(value="/updatepc1",method=RequestMethod.POST)
public @ResponseBody String updatePc(@ModelAttribute("update") PersonalComputer p)
{
	
	service.updatePersonalComputer(p);

	return "Updated Successfully";
}
@ModelAttribute("delete")
public PersonalComputer deleteProduct()
{
	return new PersonalComputer();
}
@RequestMapping(value="/deletepc",method=RequestMethod.GET)
public @ResponseBody String deletePc1(@RequestParam("id")int id)
{

	List<PersonalComputer> pc=service.getSinglePersonalComputer(id);
 PersonalComputer p=pc.get(0);
 service.deletePersonalComputer(p);
 
	return "deleted Successfully";
	
}
@RequestMapping(value="/deletepc",method=RequestMethod.POST)
public ModelAndView deletePc(@ModelAttribute("delete") PersonalComputer p)
{
	ModelAndView obj=new ModelAndView("deletepc");
	service.deletePersonalComputer(p);
	obj.addObject("message","pc information deleted");
	return obj;
}
@RequestMapping(value="/ViewAll",produces="application/json")
public @ResponseBody String viewallinformation()
{
	ModelAndView obj=new ModelAndView("ViewAll");
java.util.List<PersonalComputer> pclist=service.getAllPersonalComputers();
Gson g=new Gson();
String str=g.toJson(pclist);
	return str;
}
@RequestMapping("/viewallproducts")
public ModelAndView viewallproducts()
{
	ModelAndView obj=new ModelAndView("viewallproducts");
	return obj;
}
@RequestMapping(value="/viewsingle",method=RequestMethod.GET)
public ModelAndView viewsingle(@RequestParam("id") int id)
{
	ModelAndView obj=new ModelAndView("viewsingle");
	System.out.println(id);
	List list=service.getSinglePersonalComputer(id);
	obj.addObject("data1",list);
	System.out.println(list);
	return obj;
}
@RequestMapping("/addimage.jsp")
public ModelAndView addimage()
{
	ModelAndView obj=new ModelAndView("addimage");
	return obj;
}
}
