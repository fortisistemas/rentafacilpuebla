package com.fortisistemas.rfp;

import org.springframework.boot.web.servlet.error.ErrorAttributes;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

@Controller
public class AppErrorController implements ErrorController {

	private final ErrorAttributes errorAttributes;

	public AppErrorController(ErrorAttributes errorAttributes) {
		this.errorAttributes = errorAttributes;
	}

	@RequestMapping("/error")
	public String handleError(Model model, WebRequest webRequest) {
		final Throwable error = errorAttributes.getError(webRequest);
		model.addAttribute("exception", error);
		model.addAttribute("message", error == null ? "" : error.getMessage());
		if (error != null)
			error.printStackTrace();
		return "public/error";
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.springframework.boot.web.servlet.error.ErrorController#getErrorPath()
	 */
	@Override
	public String getErrorPath() {
		return "/error";
	}

}
