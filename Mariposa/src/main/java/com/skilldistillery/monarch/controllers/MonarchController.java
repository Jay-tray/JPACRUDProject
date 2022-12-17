package com.skilldistillery.monarch.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.monarch.data.MonarchDAO;
import com.skilldistillery.monarch.entities.Monarch;

@Controller
public class MonarchController {

	@Autowired
	private MonarchDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String goToHome(Model model) {
		return "home";
	}

	@RequestMapping("findById.do")
	public String findId(int id, Model model) {
		Monarch butterfly = dao.findById(id);
		model.addAttribute("butterfly", butterfly);
		return "result";
	}

   @RequestMapping("createForm.do")
		public String create() {
   		return "createForm";
	
		}
   
   @RequestMapping(path= "butterflyAdded.do", method = RequestMethod.POST)
   		public String butterflyAdded(Monarch butterfly, Model model) {
	    Monarch bfly = dao.create(butterfly);
	   	model.addAttribute("butterfly", bfly);
	   	return "createFormSuccess";
   }
   		
   @RequestMapping("updateForm.do")
   		public String update(Model model, int id) {
	   	Monarch butterfly = dao.findById(id);
	    model.addAttribute("butterfly", butterfly);
	   	return "updateForm";
   }
   
   @RequestMapping(path ="butterflyUpdated.do", method = RequestMethod.POST)
   		public String butterflyUpdated(int id, Monarch butterfly, Model model) {
	    Monarch bfly = dao.update(id, butterfly);
	    model.addAttribute("butterfly", bfly);
	    return "butterflyUpdated";
   }
   
   @RequestMapping("deleteForm.do")
   		public String deleteButterfly(int id, Model model) {
	   	boolean butterfly = dao.delete(id);
	   	model.addAttribute("butterfly", butterfly);
	   	return "butterflyDeleted";
   }
}
