package com.acorn.tour.login;

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
	
	public boolean isValid(String id, String pw) {		
		
		System.out.println("repository===>" + id + pw);
		
	       Connection con = null;
	       PreparedStatement pst = null;
	       ResultSet rs = null;
	       boolean result = false;
	       
	       String sql = "select userid, pw from usertbl where userid = ?" ;
	    
	       try {
				con = ds.getConnection();
				pst = con.prepareStatement(sql);
				pst.setString(1, id);
				rs = pst.executeQuery();
		
				if(rs.next()) {
					String tmp_pw = rs.getString(2); // pw가 2번째에 있어서
					
					System.out.println(tmp_pw);
					if(tmp_pw.trim().equals(pw)) { // trim은 공백 제거
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
	
	
	//  회원테이블에 카카오로그인 정보 저장 (회원가입) 	
	
	
	/*
	 * USERID     NOT NULL VARCHAR2(100) 
NICKNAME            VARCHAR2(20)  
SORT                VARCHAR2(10)  
PW                  VARCHAR2(10)  
SECTION             VARCHAR2(10)  
PROFILEURL          VARCHAR2(100) 
	 */
public int register(String user_kakao, String nickname, String profile_image) {	
		
		 
	       Connection con = null;
	       PreparedStatement pst = null;	       
	       int rRow = 0;	       
	       String sql = "Insert into USERTBL (USERID, NICKNAME, SORT, SECTION, PROFILEURL) values (?,?,'02','02',?)";
	       
	    
	       try {
				con = ds.getConnection();
				pst = con.prepareStatement(sql);
				pst.setString(1, user_kakao);
				pst.setString(2, nickname);
				pst.setString(3, profile_image);
				
				rRow = pst.executeUpdate();		
				 
				pst.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	       return rRow;
	    }	




public boolean isMember(String user_kakao) {	  // 이메일로 기존회원테이블 조회, 기존회원이 아니면 true, false
	
	 
       Connection con =  null;
       PreparedStatement pst = null;
       ResultSet rs = null;
       boolean result=true;
       
       String sql = "select * from usertbl where userid =?";
    
       try {
			con = ds.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, user_kakao);
			rs = pst.executeQuery();
	
			//해당 이메일로 조회된 자료가 있는 경우 (이미 회원가입이 된 카카오 이메일)
			if(rs.next()) {
				result=false; 
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