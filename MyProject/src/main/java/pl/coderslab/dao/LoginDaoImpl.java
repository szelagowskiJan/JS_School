package pl.coderslab.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import springmvc_example.model.UserInfo;

public class LoginDaoImpl implements LoginDao {
	
	NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) throws DataAccessException{
		this.namedParameterJdbcTemplate=namedParameterJdbcTemplate;
	}
	
	
	public UserInfo findUserInfo(String UserName) {
		String query= "select * from user where username = :username";
		return null;
	}
	
	
	
	
	
	
	

	
	public List<String> getUserRoles(String UserName) {
		// TODO Auto-generated method stub
		return null;
	}

}
