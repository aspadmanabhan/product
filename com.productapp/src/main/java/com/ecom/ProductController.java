package com.ecom;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
@RequestMapping(value="/addpc",method=RequestMethod.POST)
public ModelAndView addPersonalComputer(@ModelAttribute("add") PersonalComputer p )
{
	ModelAndView obj=new ModelAndView("addpc");
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

@RequestMapping("/updatepc")
public ModelAndView updatePersonalComputer()
{
ModelAndView obj=new ModelAndView("updatepc");
return obj;
}
@RequestMapping(value="/updatepc",method=RequestMethod.POST)
public ModelAndView updatePc(@ModelAttribute("update") PersonalComputer p)
{
	ModelAndView obj=new ModelAndView("updatepc");
	service.updatePersonalComputer(p);
	obj.addObject("message1", "pc information updated successfully");
	return obj;
}
@ModelAttribute("delete")
public PersonalComputer deleteProduct()
{
	return new PersonalComputer();
}
@RequestMapping("/deletepc")
public ModelAndView deletePc1()
{
	ModelAndView obj=new ModelAndView("deletepc");
	return obj;
	
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
@RequestMapping("/viewsingle")
public ModelAndView viewsingle()
{
	ModelAndView obj=new ModelAndView("viewsingle");
	return obj;
}
}
