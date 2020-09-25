package com.sw.web.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

import com.sw.web.domain.AssetManageVO;
import com.sw.web.domain.RiskManageVO;
import com.sw.web.domain.RiskStorageVO;
import com.sw.web.domain.VulCheckVO;
import com.sw.web.service.AssetManageService;
import com.sw.web.service.RiskManageService;
import com.sw.web.service.RiskStorageService;
import com.sw.web.service.VulCheckService;

@Controller
@RequestMapping(value="risk")
public class RiskController {
	@Autowired
	private AssetManageService AssetManageService;
	@Autowired
	private RiskManageService RiskManageService;	
	@Autowired
	private VulCheckService VulCheckService;
	@Autowired
	private RiskStorageService RiskStorageService;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String createriskGet(Model model) throws Exception {
		List<AssetManageVO> asset_vo = AssetManageService.readList();
		model.addAttribute("asset_vo",asset_vo);

		//risk storage에  vul list만큼 더해주기
		List<VulCheckVO> list = VulCheckService.readList();
		
		model.addAttribute("list",list);
		return "risk/add";
	}
	
	//risk_manage에 정보 더해줌
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createriskPost(@ModelAttribute("risk") RiskManageVO vo) throws Exception {
		//자산에 저장된 risk_count값을 기준으로 버전명 넣어주기
		AssetManageVO asset=AssetManageService.readById(vo.getAsset_id());
		int risk_count = asset.getRisk_count()+1;
		asset.setRisk_count(risk_count);
		//risk_count값 갱신
		AssetManageService.updateRiskCount(asset);
		vo.setVersion(asset.getAsset_name()+"_"+risk_count);
		RiskManageService.add(vo);
		

		return "redirect:/risk/read/list";
	}
	
	//risk_manage 내용 보여줌
	@RequestMapping(value="/read/list",method=RequestMethod.GET)
	public String readriskAllGet(Model model) throws Exception {
		List<RiskManageVO> vo = RiskManageService.readList();
		List<AssetManageVO> asset_vo = AssetManageService.readList();
		List<AssetManageVO> asset_name = new ArrayList<AssetManageVO>();
		AssetManageVO temp;
		
		for(int i=0;i<vo.size();i++) {
			temp = AssetManageService.readById(vo.get(i).getAsset_id());
			asset_name.add(temp);
		}
		model.addAttribute("vo",vo);
		model.addAttribute("asset_name",asset_name);
		model.addAttribute("asset_vo",asset_vo);

		return "risk/list";
	}
		
	//자산명에 따라 검색결과를 출력해줌
	@RequestMapping(value="/read/{name}",method=RequestMethod.GET)
	public String readAssetByNameGet(@PathVariable("name") String name,Model model) throws Exception {
		List<AssetManageVO> vo = AssetManageService.readByName(name);
		model.addAttribute("vo",vo);
		//asset_manage에서 readByName으로 id값을 가져오고
		//가져온 id로 다시 검색
		return "asset/risk";
	}
	
	//상세정보 읽어옴
	@RequestMapping(value="/read/detail/{id}",method=RequestMethod.GET)
	public String readriskByIdGet(@PathVariable("id") int id,Model model) throws Exception {
		List<RiskManageVO> list = RiskManageService.readList();
		RiskManageVO vo = RiskManageService.readById(id);
		AssetManageVO asset_name = AssetManageService.readById(vo.getAsset_id());
		List<VulCheckVO> vul_list = VulCheckService.readList();
		List<RiskStorageVO> risk = RiskStorageService.readById(id);
		System.out.println(id);
		for(int i=0;i<risk.size();i++) {
			System.out.println(risk.get(i).getItem_num()+" : "+risk.get(i).getResult());
		}
		//RiskStorageVO temp = new RiskStorageVO();
		/*
		for(int i=0;i<vul_list.size();i++) {
			//temp.setItem_num(vul_list.get(i).getItem_num());
			//temp.setRisk_id(id);
			temp = RiskStorageService.readById(id);
			try {
				if(temp.getResult()!=null) {
					risk.add(temp);
					System.out.println(temp.getResult());
				}
			}catch(NullPointerException e) {
				System.out.println("null");
			}
		}*/
		System.out.println(risk.size());
		model.addAttribute("list",list);
		model.addAttribute("vo",vo);
		model.addAttribute("asset_name",asset_name);
		model.addAttribute("vul_list",vul_list);
		model.addAttribute("risk",risk);

		return "risk/detail";
	}


	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateriskPost(@ModelAttribute("risk") RiskManageVO vo) throws Exception {
		RiskManageService.update(vo);
		return "redirect:/risk/read/detail/"+vo.getRisk_id();
	}
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String deleterisk(@PathVariable("id") int id) throws Exception {
		//risk_count 하나 줄이기
		RiskManageService.delete(id);
		return "redirect:/risk/read/list";
	}
	
}