package com.acorn.day4.서버응답;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class 데이터응답 {

	
	@ResponseBody
	@GetMapping(value="/data1", produces="text/plain;charset=UTF-8")
	public String data1() {
		return "데이터 !!";
	}
	
	/* 자바객체 -> json 변환해줌, 라이브러리 pom.xml => jackson data-bind */
	@ResponseBody
	@GetMapping("/data2")
	public User data2() {
		User user = new User("test01", "1234");
		return user;
	}
	
	
	@GetMapping("/data3")
	public void data3(HttpServletResponse response) throws IOException {
		String message="서버가 보내는 데이터";
		response.setContentType("text/plain;charset=utf-8");
		response.setHeader("Content-Length", String.valueOf(message.getBytes().length));
		response.getWriter().println(message);
				
	}
	@GetMapping("/data4")
	public ResponseEntity<String> data4(){		
		String message="서버가 보내는 message !!!!";
		return ResponseEntity.ok().header("Content-Type", "text/plain;charset=utf-8").header("Content-Length", String.valueOf(message.getBytes().length)).body(message);
		
	}
	
}
