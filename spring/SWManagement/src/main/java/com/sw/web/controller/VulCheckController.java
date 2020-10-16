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

import com.sw.web.domain.AssetManageVO;
import com.sw.web.domain.RiskManageVO;
import com.sw.web.domain.RiskStorageVO;
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
	
	//vul_check에 정보 더해줌
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createriskPost(@ModelAttribute("vul") VulCheckVO vo) throws Exception {
		VulCheckService.add(vo);
		
		/*
		//risk storage에  risk_id만큼 더해주기
		List<RiskManageVO> list = RiskManageSerivce.readList();
		RiskStorageVO temp = new RiskStorageVO();
		for(int i=0;i<list.size();i++) {
			temp.setRisk_id(list.get(i).getRisk_id());
			temp.setItem_num(vo.getItem_num());
			temp.setResult("NO");
			RiskStorageService.add(temp);
		}*/
				
		return "redirect:/vul/read/list";
	}
	
	@RequestMapping(value="/read/list", method=RequestMethod.GET)
	public String readVulGet(Model model) throws Exception {
		List<VulCheckVO> vo = VulCheckService.readList();
		model.addAttribute("vo",vo);
		return "vul/list";
	}
	
}
