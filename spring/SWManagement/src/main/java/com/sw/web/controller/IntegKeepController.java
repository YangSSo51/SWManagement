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

import java.util.ArrayList;
import java.util.List;

import com.sw.web.domain.AssetManageVO;
import com.sw.web.domain.AssetPurchaseVO;
import com.sw.web.domain.ConfigKeepVO;
import com.sw.web.domain.IntegKeepVO;
import com.sw.web.domain.SearchVO;
import com.sw.web.service.AssetManageService;
import com.sw.web.service.IntegKeepService;

@Controller
@RequestMapping(value="integ")
public class IntegKeepController {
	@Autowired
	private AssetManageService AssetManageService;
	@Autowired
	private IntegKeepService IntegKeepService;
		
	//integ_keep에 기본정보 더해줌
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createIntegPost(@ModelAttribute("integ") IntegKeepVO vo) throws Exception {
		//asset_manage에서 readById로 integ_count값 가져와서 하나 증가시키고 version에 넣어주기
		//asset_id값 가져와서 넘겨주기
		AssetManageVO asset=AssetManageService.readById(vo.getAsset_id());
		int integ_count = asset.getInteg_count()+1;
		asset.setInteg_count(integ_count);
		System.out.println("integ_count : "+integ_count);
		AssetManageService.updateIntegCount(asset);
		vo.setVersion(asset.getAsset_name()+"_"+vo.getYear()+"_"+integ_count);
		
		if(vo.getResult().equals("O") && vo.getHw_access().equals("O")) vo.setResult("적합");
		else vo.setResult("부적합");
		System.out.println(vo.getVersion());
		IntegKeepService.add(vo);
		
		return "redirect:/integ/read/list";
	}
	
	//integ_keep 내용 보여줌
	@RequestMapping(value="/read/list",method=RequestMethod.GET)
	public String readIntegAllGet(Model model) throws Exception {
		List<IntegKeepVO> vo = IntegKeepService.readList();
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

		return "integ/keep";
	}
		
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public String readConfigByNameGet(@ModelAttribute("Search") SearchVO search,Model model) throws Exception {
		List<AssetManageVO> name = AssetManageService.readByName(search.getSearch());
		List<IntegKeepVO> vo = new ArrayList<IntegKeepVO>();
		List<IntegKeepVO> integ;

		for(int i=0;i<name.size();i++) {
			integ = IntegKeepService.readByAssetId(name.get(i).getAsset_id());
			for(int j=0;j<integ.size();j++) {
				vo.add(integ.get(j));
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

		return "integ/keep";
	}
	
	//상세정보 읽어옴
	@RequestMapping(value="/read/detail/{id}",method=RequestMethod.GET)
	public String readIntegByIdGet(@PathVariable("id") int id,Model model) throws Exception {
		IntegKeepVO vo = IntegKeepService.readById(id);
		AssetManageVO asset_name = AssetManageService.readById(vo.getAsset_id());
		List<AssetManageVO> asset_vo = AssetManageService.readList();

		model.addAttribute("vo",vo);
		model.addAttribute("asset_vo",asset_vo);
		model.addAttribute("asset_name",asset_name);
		
		return "integ/detail";
	}


	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateIntegPost(@ModelAttribute("Integ") IntegKeepVO vo) throws Exception {
		if(vo.getResult().equals("O") && vo.getHw_access().equals("O")) vo.setResult("적합");
		else vo.setResult("부적합");
		IntegKeepService.update(vo);
		return "redirect:/integ/read/detail/"+vo.getInteg_id();
	}
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String deleteInteg(@PathVariable("id") int id) throws Exception {
		//integ_count 하나 줄이기
		IntegKeepService.delete(id);
		return "redirect:/integ/read/list";
	}
	
}