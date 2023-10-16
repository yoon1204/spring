package com.acorn.prac2;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class MemberRepository {
	
	@Autowired
	private SqlSession session;	
    private static String namespace = "com.acorn.MemberMapper.";  // 별칭, 임의로 작성
	
    public List<Member> selectAll(){
    	return session.selectList(namespace+"selectAll");
    }
    
    public Member selectOne(String id) {
    	return session.selectOne(namespace + "selectOne", id);   	
    }
  
   
}
