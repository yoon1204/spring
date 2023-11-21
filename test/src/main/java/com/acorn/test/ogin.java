package com.acorn.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ogin {

	@RequestMapping("/logintesting")
	public String login() {

		return "logintesting";

	}

}
