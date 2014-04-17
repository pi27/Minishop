package com.minishop.login.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.minishop.login.domain.LoginVo;
import com.minishop.login.service.LoginService;
import com.minishop.login.service.dao.LoginDao;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired(required = false)
	private LoginDao loginDao;

	@Override
	public LoginVo loginCheck(LoginVo loginVo) throws Exception {
		// TODO Auto-generated method stub
		loginVo = loginDao.loginCheck(loginVo); 
		return loginVo;
	}

	@Override
	public List<LoginVo> getUser(String id) throws Exception {
		// TODO Auto-generated method stub
		List<LoginVo> list = loginDao.getUser(id);
		
		return list;
	}
	
	@Override
	public int idCheck(String id) throws Exception {
		// TODO Auto-generated method stub
		int result = loginDao.idCheck(id); 
		return result;
	}
	
	@Override
	public int insertUser(LoginVo loginVo) throws Exception {
		// TODO Auto-generated method stub
		int result = loginDao.insertUser(loginVo); 
		return result;
	}

}
