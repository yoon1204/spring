package com.acorn.memo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class MemoDAO {
	
	
	@Autowired
	DataSource ds;
	
	
	public ArrayList<Memo> selectAll() {
		
		
		String sql = "select * from memo";
		
		ArrayList<Memo> memo = new ArrayList<>();
		
		
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				String code = rs.getString(1);
				String contents = rs.getString(2);
				
				memo.add(new Memo(code, contents));
			}
			
			
			rs.close();
			pst.close();
			con.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return memo;
		
		
	}
	
	
	public void close(AutoCloseable ...a) {
		for(AutoCloseable item : a) {
			try {
				item.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	
	
	public void insert(String m) {
		
		// sql 작성
		String sql = "insert into memo(code, contents) values(code.NEXTVAL, ?)";
		PreparedStatement pst = null;
		Connection con = null;
		
		try {
			con = ds.getConnection();
			pst = con.prepareStatement(sql);
			
			pst.setString(1, m);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 연결 해제
		close(pst, con);
		
	}
	
	
	
	public void delete(String code) {
		
		
		String sql = "delete from memo where code = ?";
		PreparedStatement pst = null;
		Connection con = null;
		
		
		try {
			con = ds.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, code);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		close(pst, con);
		
		
	}
	

}
