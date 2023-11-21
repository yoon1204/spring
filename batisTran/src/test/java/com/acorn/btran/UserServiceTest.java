package com.acorn.btran;

import static org.junit.Assert.*;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

 

import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/test.xml" , "file:src/main/webapp/WEB-INF/spring/**/test2.xml"} )
@Log4j
public class UserServiceTest {
	
	@Autowired
	MemberDao  dao;

	@Test
	public void test() throws Exception {
		 log.info(dao.insert ( new Member("id","dfd","df" )));
	}

}
