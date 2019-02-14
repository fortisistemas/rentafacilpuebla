package com.fortisistemas.rfp.controllers;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ContactController {
	@Value("${rfp.email.to}")
	private String to;

	@Autowired
	private JavaMailSender sender;

	@PostMapping("/contact/send")
	public String sendMail(String name, String phone, String mail, String message) throws MessagingException {

		MimeMessage mimeMessage = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage);
		helper.setTo(to);
		helper.setFrom("gerencia@rentafacilpuebla.com");
		helper.setCc(mail);
		helper.setSubject("rentafacilpuebla.com - Correo de contacto");
		
		StringBuilder sb = new StringBuilder();
		sb.append("Se ha recibido un registro de contacto en la página http://rentafacilpuebla.com\n");
		sb.append("A continuación se detalla la información provista por el usuario:\n");
		sb.append("Nombre: " + name + "\n");
		sb.append("Teléfono: " + phone + "\n");
		sb.append("email: " + mail + "\n");
		sb.append("Mensaje: " + message + "\n");
		helper.setText(sb.toString());

		sender.send(mimeMessage);
		return "redirect:/";
	}

}
