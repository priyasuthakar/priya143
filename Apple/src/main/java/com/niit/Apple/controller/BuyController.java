package com.niit.Apple.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.appleproduct.dao.BuyDAO;
import com.niit.appleproduct.models.Buy;
import com.niit.appleproduct.models.User;

@Controller
public class BuyController {
	
	@Autowired
	private BuyDAO buyDAO;
	@Autowired
	private Buy buy;
	@Autowired
	private User user;
	
	@RequestMapping("/buy")
	public String buy(Model model){
		model.addAttribute("buy", buy); 
		model.addAttribute("isbuyClickedRegisterHere", "true"); 
		return "/buy";
	}

	@RequestMapping(value = "/buy", method = RequestMethod.POST)
	public ModelAndView buypost(@ModelAttribute("buy") Buy buy,HttpSession session) {
		String loggedInUser=(String) session.getAttribute("loggedInUser");
		buy.setUsername(loggedInUser);
		buyDAO.saveOrUpdate(buy);
		ModelAndView mv = new ModelAndView("/proceded");
		mv.addObject("successbuy", "You are successfully purchased");
		return mv;
	}
	/*
	@RequestMapping("/proceded")
	public String proceded() {
		return "proceded";
	}
	*/
	
}