package com.skilldistillery.monarch.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.monarch.data.MonarchDAO;

@Controller
public class MonarchController {

		@Autowired
		private MonarchDAO dao;
	
		@RequestMapping(path = {"/", "home.do"})
		public String goToHome(Model model) {
			model.addAttribute("id", dao.findAll());
			return "home";
		}
}
