package com.acorn.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;



@Component
public class LoginDAO {

	@Autowired
	DataSource ds;
	
	public ArrayList<Login> Select(){
		
		String sql = "select * from logintbl";
		
		ArrayList<Login> list = new ArrayList<>();
		
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				list.add(new Login(rs.getString(1), rs.getString(2)));
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
	
	public int insert(Login login) {
		int row=0;
		
		String sql="insert into logintbl values(?,?)";
		
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			
			pst.setString(1, login.getId());
			pst.setString(2, login.getPw());
			row=pst.executeUpdate();
			
			pst.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return row;	
	}
	
	public ArrayList<String> test(){
		ArrayList<String> testList = new ArrayList<>();
		testList.add("테스트항목1");
		testList.add("테스트항목2");		
		// return null;   //  테스트시 실패
		return testList;  // 테스트시 성공
	}
}
