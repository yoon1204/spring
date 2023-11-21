package com.acorn.userInfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class userDAO {

	@Autowired
	DataSource ds;
	
	public User selectUser(String id){
		
		String sql = "select * from lytbl  where  = ?";		
		User user= new User()   ;
		
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, id); // PreparedStatement에 파라미터로 받은 id 값을 설정
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				String id1 = rs.getString(1); 
				String name = rs.getString(2);
				String tel = rs.getString(3);
				String addr = rs.getString(4);
				
				 user.setId(id1);
				 user.setName(name);
				 user.setTel(tel);
				 user.setAddr(addr);
			}
				
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
