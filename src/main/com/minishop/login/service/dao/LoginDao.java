package com.minishop.login.service.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.minishop.login.domain.LoginVo;

@Repository
@SuppressWarnings("unchecked")  
public class LoginDao {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	public LoginVo loginCheck(LoginVo loginVo) throws Exception {
		loginVo = (LoginVo)(sqlMapClientTemplate.queryForObject("login.loginCheck",  loginVo));
		return loginVo;
	}
	
	public List<LoginVo> getUser(String id) throws Exception {
		List<LoginVo> list = sqlMapClientTemplate.queryForList("login.getUser", id);
		
		return list;
	}
	
	public int idCheck(String id) throws Exception {
		int result = (Integer)(sqlMapClientTemplate.queryForObject("login.idCheck",  id));
		return result;
	}
	
	public int insertUser(LoginVo loginVo) throws Exception {
		int result = (Integer)(sqlMapClientTemplate.insert("login.insertUser",  loginVo));
		return result;
	}

}
