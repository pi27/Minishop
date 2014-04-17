package com.minishop.login.service;

import java.util.List;

import com.minishop.login.domain.LoginVo;

public interface LoginService {
	
	LoginVo loginCheck(LoginVo loginvo) throws Exception;
	List<LoginVo> getUser(String id) throws Exception;
	int idCheck(String id) throws Exception;
	int insertUser(LoginVo loginvo) throws Exception;

}
