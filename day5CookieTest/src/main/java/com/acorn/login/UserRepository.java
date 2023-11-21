package com.acorn.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserRepository{
	
	@Autowired
	DataSource ds;
	
	
	public UserDTO selectOne(String id) {
		
		UserDTO user = new UserDTO();
		String sql="select userid, pw from USERTBL where userid = ? ";
		
		try {
			Connection con = ds.getConnection();
			PreparedStatement  pst =con.prepareStatement(sql);
			pst.setString(1, id);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				String pw = rs.getString(2);
				user.setId(id);
				user.setPw(pw);
			} 			
			//
			rs.close();
			pst.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return user;
	}
	
	
}