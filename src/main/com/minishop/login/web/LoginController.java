package com.minishop.login.web;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.minishop.login.domain.LoginVo;
import com.minishop.login.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired(required = false)
	private LoginService loginService;
	
	@RequestMapping(params="method=login") 
	public String login(HttpServletRequest request, Model model, @ModelAttribute LoginVo loginVo) throws Exception{
		
		loginVo = loginService.loginCheck(loginVo);
		String msg = "";
		String returnUrl = "";
		
		if(loginVo != null) {
			msg = "ȸ���Դϴ�.";
			returnUrl = "/main/myPage";
		} else {
			msg = "���̵�� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.";
			returnUrl = "/main/main";
		}
		
		model.addAttribute("loginVo", loginVo);
		model.addAttribute("msg", msg);
		
		return returnUrl;
	}
	
	@RequestMapping(params="method=join") 
	public String join(HttpServletRequest request, Model model, @ModelAttribute LoginVo loginVo) throws Exception{
		return "/join/join";
	
	}
	
	@RequestMapping(params="method=idCheck") 
	public String idCheck(HttpServletRequest request, Model model, @ModelAttribute LoginVo loginVo) throws Exception{
		
		
		int result = loginService.idCheck(loginVo.getId());
		String msg = "";
		
		if(result > 0) {
			msg = "�̹� ���Ե� ���̵��Դϴ�.";
		} else {
			msg = "���� ������ ���̵��Դϴ�.";
		}
		
		model.addAttribute("loginVo", loginVo);
		model.addAttribute("msg", msg);
		model.addAttribute("result", result);
		
		return "/join/join";
	}
	
	@RequestMapping(params="method=insertUser") 
	public String insertUser(HttpServletRequest request, Model model, @ModelAttribute LoginVo loginVo) throws Exception{
		
		
		int result = loginService.insertUser(loginVo);
		String msg = "";
		
		if(result > 0) {
			msg = "�̹� ���Ե� ���̵��Դϴ�.";
		} else {
			msg = "���� ������ ���̵��Դϴ�.";
		}
		
		model.addAttribute("loginVo", loginVo);
		model.addAttribute("msg", msg);
		model.addAttribute("result", result);
		
		return "/join/join";
	}
	
}
