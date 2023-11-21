package com.acorn.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginRepository {

	@Autowired
	private DataSource ds;
	
	public boolean isValid(String id, String pw) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		boolean result = false;
		
		String sql = "select * from usertbl where userid = ?";
	
		try {
			
			con = ds.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, id);
			rs = pst.executeQuery();
			
			if(rs.next()) {
				String tmp_pw = rs.getString(2); 
				
				if(tmp_pw.trim().equals(pw)) {
					result = true;
					System.out.println("같아");
				}else {
					System.out.println("달라");
				}
			}
			
			rs.close();
			pst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	
	}
}
