package com.acorn.tour.Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
public class LoginRepository {
	
	@Autowired
	private DataSource ds;
	
	
	// 수정한 부분
	
	/*
	public ArrayList<UserDTO> selectAll() {
       Connection con =  null;
       PreparedStatement pst = null;
       ResultSet rs = null;
       
       String sql = "select * from usertbl" ;
       ArrayList<UserDTO> list = new ArrayList<>();
       try {
			con = ds.getConnection();
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
	
			while(rs.next()) {
				String userid = rs.getString(1);
				String nickname = rs.getString(2);
				String sort = rs.getString(3);
				String pw = rs.getString(4);
				String section = rs.getString(5);
				
				UserDTO user = new UserDTO(userid,nickname,sort,pw,section);
				list.add(user);
			}
			
			 rs.close();
			 pst.close();
			 con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       return list;
    }
    
    */
	
	public boolean isValid( String id, String pw) {		
		
		System.out.println("repository===>"+ id + pw);
		
	       Connection con =  null;
	       PreparedStatement pst = null;
	       ResultSet rs = null;
	       boolean result=false;
	       
	       String sql = "select userid, pw from usertbl  where userid =?" ;
	    
	       try {
				con = ds.getConnection();
				pst = con.prepareStatement(sql);
				pst.setString(1, id);
				rs = pst.executeQuery();
		
				if(rs.next()) {
					String tmp_pw = rs.getString(2); // pw가 2번째에 있어서
					
					System.out.println(tmp_pw);
					if(  tmp_pw.trim().equals(pw)) { // trim은 공백 제거
						result=true;
						System.out.println("같아요");
					}else {
						System.out.println("달라요");
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