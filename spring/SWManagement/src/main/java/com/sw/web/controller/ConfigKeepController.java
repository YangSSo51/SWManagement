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
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.sw.web.domain.AssetManageVO;
import com.sw.web.domain.AssetPurchaseVO;
import com.sw.web.domain.CodeMasterVO;
import com.sw.web.domain.ConfigKeepVO;
import com.sw.web.domain.SearchVO;
import com.sw.web.domain.UserVO;
import com.sw.web.service.AssetManageService;
import com.sw.web.service.ConfigKeepService;

@Controller
@RequestMapping(value="config")
public class ConfigKeepController {
	@Autowired
	private AssetManageService AssetManageService;
	@Autowired
	private ConfigKeepService ConfigKeepService;
		
	//Config_keep�뿉 湲곕낯�젙蹂� �뜑�빐以�
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createConfigPost(@ModelAttribute("Config") ConfigKeepVO vo) throws Exception {
    	SimpleDateFormat format = new SimpleDateFormat ("MM.dd");
    	Date time = new Date();
		
    	vo.setDate(format.format(time));
		ConfigKeepService.add(vo);
		
		return "redirect:/config/read/list";
	}
	
	
	
	//Config_keep �궡�슜 蹂댁뿬以�
	@RequestMapping(value="/read/list",method=RequestMethod.GET)
	public String readConfigAllGet(Model model, HttpSession session) throws Exception {
		UserVO user = (UserVO)session.getAttribute("user");
		List<ConfigKeepVO> vo = ConfigKeepService.readList();
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

		return "config/keep";
	}
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public String readConfigByNameGet(@ModelAttribute("Search") SearchVO search,Model model) throws Exception {
		List<AssetManageVO> name = AssetManageService.readByName(search.getSearch());
		List<ConfigKeepVO> vo = new ArrayList<ConfigKeepVO>();
		List<ConfigKeepVO> config;

		for(int i=0;i<name.size();i++) {
			config = ConfigKeepService.readByAssetId(name.get(i).getAsset_id());
			for(int j=0;j<config.size();j++) {
				vo.add(config.get(j));
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

		return "config/keep";
	}
	
	//�긽�꽭�젙蹂� �씫�뼱�샂
	@RequestMapping(value="/read/detail/{id}",method=RequestMethod.GET)
	public String readConfigByIdGet(@PathVariable("id") int id,Model model) throws Exception {
		ConfigKeepVO vo = ConfigKeepService.readById(id);
		AssetManageVO asset_name = AssetManageService.readById(vo.getAsset_id());
		List<AssetManageVO> asset_vo = AssetManageService.readList();

		model.addAttribute("vo",vo);
		model.addAttribute("asset_vo",asset_vo);
		model.addAttribute("asset_name",asset_name);
		
		return "config/detail";
	}


	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateConfigPost(@ModelAttribute("Config") ConfigKeepVO vo) throws Exception {
		ConfigKeepService.update(vo);
		return "redirect:/config/read/detail/"+vo.getConfig_id();
	}
	
	@RequestMapping(value="/update/admin",method=RequestMethod.POST)
	public String updateConfigAdminPost(@ModelAttribute("Config") ConfigKeepVO vo) throws Exception {
		if(check(vo.getM_review())&&check(vo.getM_vul())&&check(vo.getM_path())&&check(vo.getM_infra())&&check(vo.getM_locate())){
			vo.setM_okay("O");
		}
		else vo.setM_okay("X");
		ConfigKeepService.updateAdmin(vo);
		return "redirect:/config/read/detail/"+vo.getConfig_id();
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String deleteConfig(@PathVariable("id") int id) throws Exception {
		ConfigKeepService.delete(id);
		return "redirect:/config/read/list";
	}
	
	public boolean check(String x) {
		boolean result=false;
		try {
			if(x.equals("O")) result=true;
			else result=false;
		}catch(NullPointerException e) {
			System.out.println("null");
		}
		return result;
	}
}