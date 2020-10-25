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

import javax.servlet.http.HttpSession;

import com.sw.web.domain.AssetManageVO;
import com.sw.web.domain.AssetPurchaseVO;

import com.sw.web.domain.CodeMasterVO;
import com.sw.web.domain.IntegKeepVO;
import com.sw.web.domain.UserVO;

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
		
	//integ_keep�뿉 湲곕낯�젙蹂� �뜑�빐以�
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createIntegPost(@ModelAttribute("integ") IntegKeepVO vo) throws Exception {
		//asset_manage�뿉�꽌 readById濡� integ_count媛� 媛��졇���꽌 �븯�굹 利앷��떆�궎怨� version�뿉 �꽔�뼱二쇨린
		//asset_id媛� 媛��졇���꽌 �꽆寃⑥＜湲�
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
	
	
	
	
	
	//integ_keep �궡�슜 蹂댁뿬以�
	@RequestMapping(value="/read/list",method=RequestMethod.GET)
	public String readIntegAllGet(Model model, HttpSession session) throws Exception {
		UserVO user = (UserVO)session.getAttribute("user");
		List<IntegKeepVO> vo = IntegKeepService.readList();
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

		return "integ/keep";
	}
		
	//�옄�궛紐�,�젏寃��뿰�룄,�쟻�빀 �뿬遺��뿉 �뵲�씪 寃��깋寃곌낵瑜� 異쒕젰�빐以�
	@RequestMapping(value="/read/{name}",method=RequestMethod.GET)
	public String readAssetByNameGet(@PathVariable("name") String name,Model model) throws Exception {
		List<AssetManageVO> vo = AssetManageService.readByName(name);
		model.addAttribute("vo",vo);
		//asset_manage�뿉�꽌 readByName�쑝濡� id媛믪쓣 媛��졇�삤怨�
		//媛��졇�삩 id�쓽 媛��닔留뚰겮 �젏寃� �뿰�룄,�쟻�빀 �뿬遺�濡� �떎�떆 寃��깋
		return "asset/integ";
		
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
	
	//�긽�꽭�젙蹂� �씫�뼱�샂
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
		//integ_count �븯�굹 以꾩씠湲�
		IntegKeepService.delete(id);
		return "redirect:/integ/read/list";
	}
	
}