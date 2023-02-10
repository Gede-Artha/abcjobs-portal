package com.abc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abc.search.User;
import com.abc.search.UserService;

@Controller
public class SearchUserController {
	
	@Autowired
	UserService userService;
	
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam (value = "keyword", required = false) String keyword) {
		List<User> result = userService.search(keyword);
	    ModelAndView mav = new ModelAndView("search");
	    mav.addObject("result", result);
	    
	    if (result == null || keyword.isEmpty()) {
    		mav.addObject("msgsearchResult", "Sorry we couldn't find any result for " + "'" + keyword + "'");
    	} else {
    		mav.addObject("msgsearchResult", "Result of your search for " + "'" + keyword + "'");
    		mav.addObject("userlist", keyword);    		
    	}
	 
	    return mav;    
	}
	
//	@RequestMapping(value = "/seeprofile/{id}", method = RequestMethod.GET)
	//	public ModelAndView seeProfile(@PathVariable int id) throws Exception{
	//ModelAndView model = new ModelAndView();
	//	User user = userService.findUserById(id);
	//
	//if (user == null ) {
	//	model.addObject("msg", "User Profile Can't be found, Please contact us if this message still showing.");
	//	model.setViewName("filenotfound");
	//} else {
	//	model.addObject("user", user);
	//	model.setViewName("someoneProfile");
	//}
		
	//return model;
	//}


}
