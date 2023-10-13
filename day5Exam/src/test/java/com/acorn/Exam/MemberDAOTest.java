package com.acorn.Exam;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/test.xml" , "file:src/main/webapp/WEB-INF/spring/**/test2.xml"})

public class MemberDAOTest {
	
	@Autowired
	DataSource datasource;
	
	@Autowired
	MemberDAO dao;
 
	//dao연결
	//@Test
	public void test() throws SQLException {
		//fail("Not yet implemented");
		Connection con=datasource.getConnection();
		assertTrue(con !=null);
	}
	
	//회원목록조회
	//@Test
	public void test2() throws SQLException {
		ArrayList<Member> list = dao.findAll();
		assertTrue(list.size() >= 1 );
	}
	
	//회원조회
	//@Test
	public void test3() throws SQLException {
		String str = "test01";
		Member member = dao.findOne(str);
		assertTrue(member.getId().equals(str));
	}
	
	//등록
	//@Test	
	public void test4() throws SQLException {
		Member member = new Member("test03", "1234", "이윤정", "yj@email.com", "1998-03-07", "yj" , new Date()); 
		int result = dao.registerMember(member);
		assertTrue(result == 1);
	}
	
	//변경
	//목록 한개 조회 후 등록하고 변경하니까 등록이랑 똑같은 방법으로 테스트
	@Test	
	public void test5() throws SQLException {
		Member member = new Member("test03", "1234", "이윤", "yj@email.com", "1998-03-07", "yj" , new Date()); 
		int result = dao.updateUser(member);
		assertTrue(result == 1);
	}
	
	//삭제
	//@Test	
	public void test6() throws SQLException {
		String str = "test03";
		int result = dao.deleteMember(str);
		assertTrue(result == 1);
	}
	

	
}
