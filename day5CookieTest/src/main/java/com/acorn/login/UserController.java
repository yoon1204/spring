package com.acorn.login;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

	@Autowired
	UserService s;
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "login";
	}
	

//	public String login(UserDTO userDTO, Model model) {
//        String result = userService.loginCheck(userDTO);
//        if (result != null) {
//            model.addAttribute("message", "로그인 성공!");
//            return "home";
//        } else {
//            model.addAttribute("message", "아이디 또는 비밀번호가 틀렸습니다.");
//            return "loginForm";
//        }
//    }
}