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

import java.util.ArrayList;
import java.util.List;

import com.sw.web.domain.AssetManageVO;
import com.sw.web.domain.CodeMasterVO;
import com.sw.web.domain.RiskManageVO;
import com.sw.web.domain.RiskStorageVO;
import com.sw.web.domain.UserVO;
import com.sw.web.domain.VulCheckVO;
import com.sw.web.service.VulCheckService;
import com.sw.web.service.RiskManageService;
import com.sw.web.service.RiskStorageService;

@Controller
@RequestMapping(value="vul")
public class VulCheckController {
	
	@Autowired
	private VulCheckService VulCheckService;
	@Autowired
	private RiskManageService RiskManageSerivce;
	@Autowired
	private RiskStorageService RiskStorageService;
	
	//vul_check�뿉 �젙蹂� �뜑�빐以�
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createriskPost(@ModelAttribute("vul") VulCheckVO vo) throws Exception {
		VulCheckService.add(vo);
		
		/*
		//risk storage�뿉  risk_id留뚰겮 �뜑�빐二쇨린
		List<RiskManageVO> list = RiskManageSerivce.readList();
		RiskStorageVO temp = new RiskStorageVO();
		for(int i=0;i<list.size();i++) {
			temp.setRisk_id(list.get(i).getRisk_id());
			temp.setItem_num(vo.getItem_num());
			temp.setResult("NO");
			RiskStorageService.add(temp);
		}*/
				
		return "redirect:/vul/read/2";
	}
	
	
	@RequestMapping(value="/read/list", method=RequestMethod.GET)
	public String readVulGet(Model model, HttpSession session) throws Exception {
		UserVO user = (UserVO)session.getAttribute("user");
		List<VulCheckVO> vo = VulCheckService.readList();
		model.addAttribute("user", user);
		model.addAttribute("vo",vo);
		return "vul/list";
	}

	@RequestMapping(value="/read/{name}", method=RequestMethod.GET)
	public String readVulGet(@PathVariable("name") String name,Model model) throws Exception {
		List<VulCheckVO> vo = VulCheckService.readList();
		List<VulCheckVO> temp = new ArrayList<VulCheckVO>();
		
		if(name.equals("1")) {
			for(int i=0;i<14;i++) {
				temp.add(vo.get(i));
			}
		}else {
			for(int i=14;i<vo.size();i++) {
				temp.add(vo.get(i));
			}
		}
		model.addAttribute("vo",temp);
		if(name.equals("1")) return "vul/list";
		else return "vul/list2";
	}
	
}
