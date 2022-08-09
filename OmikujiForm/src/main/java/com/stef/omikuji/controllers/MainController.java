package com.stef.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController{
	@RequestMapping("/")
	public String index() {//first method
		return "form.jsp";
	}
	@RequestMapping(value="/process", method=RequestMethod.POST)
	public String process(                 //second and it sends it 
		HttpSession session,
		@RequestParam(value="years") String years,
		@RequestParam(value="city") String city,
    	@RequestParam(value="name") String name,
    	@RequestParam(value="hobby") String hobby,
    	@RequestParam(value="thing") String thing,
    	@RequestParam(value="message") String message) {
		
		session.setAttribute("city", city);
		session.setAttribute("name", name);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("message", message);
		session.setAttribute("years", years);

		
		return "redirect:/omikuji/show";
	}
	@RequestMapping("/omikuji/show")
	public String show(HttpSession session, Model model) {//last one shows the form
		
		String city = (String) session.getAttribute("city");
		model.addAttribute("city", city);
		return "message.jsp";
	}
}

