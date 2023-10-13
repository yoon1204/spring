package com.acorn.Exam;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {

	@Autowired
	DataSource ds;
	
	//회원목록조회
	public ArrayList<Member> findAll(){
		
		String sql = "select * from member_acorn";
		
		ArrayList<Member> list = new ArrayList<>();
		
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);		
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString(1);
				String pwd = rs.getString(2);
				String name = rs.getString(3);
				String email = rs.getString(4);
				String birth = rs.getString(5);
				String sns = rs.getString(6);
				Date reg_date = rs.getDate(7);				
				list.add(new Member(id, pwd, name, email, birth, sns, reg_date));				
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
	
	//회원조회
	public Member findOne(String id) {
		
		String sql = "select * from member_acorn where id=?";
		Connection con;
		PreparedStatement pst = null;
		ResultSet rs = null;
		Member s = null;
		
		try {
			con = ds.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, id);
			rs = pst.executeQuery();
			
			if(rs.next() == true) {
				String pwd = rs.getString(2);
				String name = rs.getString(3);
				String email = rs.getString(4);
				String birth = rs.getString(5);
				String sns = rs.getString(6);
				Date reg_date = rs.getDate(7);	
				
				s = new Member(id, pwd, name, email, birth, sns, reg_date);
			}
			rs.close();
			pst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return s;
	
	}
	
	//등록	
	public int registerMember(Member member) {
		
		Connection con;
		String sql = "insert into member_acorn values(?,?,?,?,?,?,?)";
		PreparedStatement pst = null;
		
		int result = 0;
		
		try {				
			con = ds.getConnection();
			pst = con.prepareStatement(sql);
		 
			pst.setString(1, member.getId());
			pst.setString(2, member.getPwd());
			pst.setString(3, member.getName());
			pst.setString(4, member.getEmail());
			pst.setString(5, member.getBirth());
			pst.setString(6, member.getSns());
			pst.setTimestamp(7, new Timestamp(member.getReg_date().getTime()));
			result = pst.executeUpdate();
			
			
			pst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return result;
	}
	
	//변경
	public int updateUser(Member member) {
		System.out.println(member);
		String sql = " update member_acorn" +
					 " set pwd = ?, name=?, email=?, birth=?, sns=?, reg_date=? " +
					 " where id = ? ";
		Connection con = null;
		PreparedStatement pst = null;
		System.out.println("sql =" + sql);
		
		int result=0;
		
		try {
			con = ds.getConnection();
			System.out.println(con);
			pst =  con.prepareStatement(sql);
			pst.setString(1, member.getPwd());
			pst.setString(2, member.getName());
			pst.setString(3, member.getEmail());
			pst.setString(4, member.getBirth());
			pst.setString(5, member.getSns());
			pst.setTimestamp(6, new java.sql.Timestamp(member.getReg_date().getTime()));
			pst.setString(7, member.getId());
			
			result = pst.executeUpdate();
			
			System.out.println(result);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}finally {
			close(pst, con);
		}
		return result;
	}
	
	private void close(AutoCloseable... acs) {
		for(AutoCloseable ac :acs)
			try { if(ac!=null)ac.close();} catch(Exception e) {e.printStackTrace();}
	}
	
	//삭제
	public int deleteMember(String id) {
		
		Connection con;
		
		String sql = "delete from member_acorn where id = ?";
		PreparedStatement pst = null;
		int result = 0;
		try {
			con = ds.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, id);
			result = pst.executeUpdate();
			
			pst.close();
			con.close();
		} catch (SQLException e) {		
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
		
	}
}
