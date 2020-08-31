package com.sw.web.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

import com.sw.web.domain.CodeMasterVO;
import com.sw.web.service.CodeMasterService;

@Controller
@RequestMapping(value="code")
public class CommonCodeController {
	
	@Autowired
	private CodeMasterService CodeMasterService;
	
	private static final Logger logger = LoggerFactory.getLogger(CommonCodeController.class);

	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createUserPost(@ModelAttribute("User") CodeMasterVO vo) throws Exception {
		CodeMasterService.add(vo);
		return "redirect:/code/read";
	}
	
	@RequestMapping(value="/read",method=RequestMethod.GET)
	public String readUserGet(Model model) throws Exception {
		List<CodeMasterVO> vo = CodeMasterService.readList();
		model.addAttribute("user",vo);
		return "test/common_code";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.GET)
	public String updateUserGet(@RequestParam("id") int id, Model model) throws Exception {
		CodeMasterVO vo = CodeMasterService.read(id);
		model.addAttribute("user",vo);
		return "test/common_code";
	}
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateUserGet(@ModelAttribute("User") CodeMasterVO vo) throws Exception {
		CodeMasterService.update(vo);
		return "redirect:/code/read";
	}


}