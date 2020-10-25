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

import javax.servlet.http.HttpSession;

import com.sw.web.domain.AssetManageVO;
import com.sw.web.domain.CodeMasterVO;
import com.sw.web.domain.ConfigKeepVO;
import com.sw.web.domain.RiskManageVO;
import com.sw.web.domain.RiskStorageVO;
import com.sw.web.domain.SearchVO;
import com.sw.web.domain.UserVO;
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
		
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String createriskGet(Model model) throws Exception {
		List<AssetManageVO> asset_vo = AssetManageService.readList();
		model.addAttribute("asset_vo",asset_vo);

		//risk storage�뿉  vul list留뚰겮 �뜑�빐二쇨린
		List<VulCheckVO> list = VulCheckService.readList();
		
		model.addAttribute("list",list);
		return "risk/add";
	}
	
	//risk_manage�뿉 �젙蹂� �뜑�빐以�
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createriskPost(@ModelAttribute("risk") RiskManageVO vo) throws Exception {
		//�옄�궛�뿉 ���옣�맂 risk_count媛믪쓣 湲곗��쑝濡� 踰꾩쟾紐� �꽔�뼱二쇨린
		AssetManageVO asset=AssetManageService.readById(vo.getAsset_id());
		int risk_count = asset.getRisk_count()+1;
		asset.setRisk_count(risk_count);
		//risk_count媛� 媛깆떊
		AssetManageService.updateRiskCount(asset);
		vo.setVersion(asset.getAsset_name()+"_"+risk_count);
		RiskManageService.add(vo);
		

		return "redirect:/risk/read/list";
	}
	
	
	
	//risk_manage �궡�슜 蹂댁뿬以�
	@RequestMapping(value="/read/list",method=RequestMethod.GET)
	public String readriskAllGet(Model model, HttpSession session) throws Exception {
		UserVO user = (UserVO)session.getAttribute("user");
		List<RiskManageVO> vo = RiskManageService.readList();
		List<AssetManageVO> asset_vo = AssetManageService.readList();
		List<AssetManageVO> asset_name = new ArrayList<AssetManageVO>();
		AssetManageVO temp;
		
		for(int i=0;i<vo.size();i++) {
			temp = AssetManageService.readById(vo.get(i).getAsset_id());
			asset_name.add(temp);
		}
		model.addAttribute("user", user);
		model.addAttribute("vo",vo);
		model.addAttribute("asset_name",asset_name);
		model.addAttribute("asset_vo",asset_vo);

		return "risk/list";
	}
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public String readConfigByNameGet(@ModelAttribute("Search") SearchVO search,Model model) throws Exception {
		List<AssetManageVO> name = AssetManageService.readByName(search.getSearch());
		List<RiskManageVO> vo = new ArrayList<RiskManageVO>();
		List<RiskManageVO> risk;
		System.out.println("name size : "+name.size());

		for(int i=0;i<name.size();i++) {
			risk = RiskManageService.readByAssetId(name.get(i).getAsset_id());
			System.out.println("asset_id : "+name.get(i).getAsset_id());
			for(int j=0;j<risk.size();j++) {
				vo.add(risk.get(j));
			}
		}
		
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
		
	//�옄�궛紐낆뿉 �뵲�씪 寃��깋寃곌낵瑜� 異쒕젰�빐以�
	@RequestMapping(value="/read/{name}",method=RequestMethod.GET)
	public String readAssetByNameGet(@PathVariable("name") String name,Model model) throws Exception {
		List<AssetManageVO> vo = AssetManageService.readByName(name);
		model.addAttribute("vo",vo);
		//asset_manage�뿉�꽌 readByName�쑝濡� id媛믪쓣 媛��졇�삤怨�
		//媛��졇�삩 id濡� �떎�떆 寃��깋
		return "asset/risk";
	}
	
	//�긽�꽭�젙蹂� �씫�뼱�샂
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
		//risk_count �븯�굹 以꾩씠湲�
		RiskManageService.delete(id);
		return "redirect:/risk/read/list";
	}
	
}