package com.abc.login;




import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.abc.register.UserRepository;



@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@Autowired
	UserRepository userrepository;
	
	
	@RequestMapping("/login")
	public ModelAndView loginpage() {
		ModelAndView mv = new ModelAndView("login");
		
		LoginUser user = new LoginUser();
		LoginProfile profile = new LoginProfile();
		user.setProfile(profile);
		mv.addObject("userLogin", user);
		return mv;
	}
	
	
	
	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String userLogin(@ModelAttribute("userLogin") LoginUser user, HttpSession session, Model model) {
		LoginUser loginUser = loginService.loadUserByEmail(user.getEmail());
		
		if(loginUser != null ) {
			LoginProfile profile = loginService.loadProfile(loginUser);
			
		if(profile.getUser().getPassword().equals(user.getPassword())) {
				session.setAttribute("profile", profile);
			} else {
				model.addAttribute("message", "Wrong password, please try again.");
				model.addAttribute("error", "border: 1px solid #b02a37;");
				return "login";
			}
			
		} else {
			model.addAttribute("message", "Invalid account, please try again.");
			model.addAttribute("error", "border: 1px solid #b02a37;");
			return "login";
		}
		
		return "redirect:/homepage";
	}
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("homepage")
	public String userProfile(HttpSession session) {
		
		if(loginService.getCurrentUser(session) == null) {
			return "login";
		}
		
		return "homepage";
	}
	
	@RequestMapping("/logout")
	public String userLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	@RequestMapping("/user-profile")
	public ModelAndView Userprofile() {
		ModelAndView mv = new ModelAndView("user-profile");
		return mv;
	}
	
	

}
