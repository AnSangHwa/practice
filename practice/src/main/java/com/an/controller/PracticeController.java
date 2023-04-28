package com.an.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.an.service.PracticeService;

@Controller
public class PracticeController {
	
	@Autowired
	private PracticeService service;
	
	@RequestMapping("/list")
	String Practice(String search , Model model) {
		
		System.out.println("컨트롤러 진입");
		System.out.println(service.list());
		
		model.addAttribute("goods", service.list());
		
		
		return "home";
	}

}
