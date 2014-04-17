package com.minishop.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/main")
public class MainController {
	@RequestMapping(params="method=main") 
	public String main() {
		return "/main/main";
	}
}
