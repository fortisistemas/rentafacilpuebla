package com.fortisistemas.rfp;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {

	@GetMapping(path = "/contact")
	public String contact(Authentication auth) {
		return "public/contact";
	}

	@GetMapping(path = "/login")
	public String login() {
		return "login/index";
	}

}
