package com.sw.web.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

import com.sw.web.domain.VulCheckVO;
import com.sw.web.service.VulCheckService;

@Controller
@RequestMapping(value="vul") //여기에 테이블 이름 들어감
public class VulCheckController {
	
	@Autowired
	private VulCheckService VulCheckService;
	/*
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String createVulPost(@ModelAttribute("")) throws Exception {
		return "test/vul_check";
	}
	*/
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public String readVulGet(Model model) throws Exception {
		List<VulCheckVO> vo = VulCheckService.readList();
		model.addAttribute("vul",vo);
		return "test/vul_check";
	}
	
}
