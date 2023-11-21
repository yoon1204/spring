package com.acorn.tour.hotkok;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.acorn.tour.login.LoginService;

@Controller
public class hotkokController {

	@Autowired
	LoginService loginService;
	
	@RequestMapping("/hotkok")
    public String hotkok() {
        return "hotkok";
    }
}
