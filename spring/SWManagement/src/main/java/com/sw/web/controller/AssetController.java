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
import com.sw.web.domain.RiskManageVO;
import com.sw.web.domain.SearchVO;
import com.sw.web.service.AssetManageService;
import com.sw.web.service.AssetPurchaseService;

@Controller
@RequestMapping(value="asset")
public class AssetController {
	@Autowired
	private AssetManageService AssetManageService;
	@Autowired
	private AssetPurchaseService AssetPurchaseService;
		
	//asset_manage에 기본정보 더해줌
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createAssetPost(@ModelAttribute("Asset") AssetManageVO vo) throws Exception {
		AssetManageService.add(vo);
		return "redirect:/asset/purchase";
	}
	
	//asset_manage 내용 보여줌
	@RequestMapping(value="/read/list/{name}",method=RequestMethod.GET)
	public String readAssetAllGet(@PathVariable("name") String name,Model model) throws Exception {
		List<AssetManageVO> vo = AssetManageService.readList();
		ArrayList<AssetManageVO> plc = new ArrayList<AssetManageVO>();
		ArrayList<AssetManageVO> pc = new ArrayList<AssetManageVO>();
		ArrayList<String> check1 = new ArrayList<String>();
		ArrayList<String> check2 = new ArrayList<String>();

		for(int i=0;i<vo.size();i++) {
			if(vo.get(i).getMain_device().equals("PLC")||vo.get(i).getMain_device().equals("DCS")) {
				plc.add(vo.get(i));
			    try {
					if(vo.get(i).getHash_logic().length()>0) check1.add("true");
					else check1.add("false");		 
			    } catch (NullPointerException ex) {
					check1.add("false");		 
			    }
			}else {
				pc.add(vo.get(i));
			    try {
					if(vo.get(i).getHash_logic().length()>0) check2.add("true");
					else check2.add("false");		 
			    } catch (NullPointerException ex) {
					check2.add("false");		 
			    }
			}
		}

		if(name.equals("1")) {
			model.addAttribute("vo",plc);
			model.addAttribute("check",check1);
			return "asset/integ_plc";
		}else {
			model.addAttribute("vo",pc);
			model.addAttribute("check",check2);
			return "asset/integ";
		}

	}
	//asset_manage 중 자산명과 asset_name으로 읽어옴 내용 보여줌
			@RequestMapping(value="/search/{num}",method=RequestMethod.POST)
			public String readAssetByNameGet(@PathVariable("num") String num,@ModelAttribute("Search") SearchVO search,Model model) throws Exception {
				List<AssetManageVO> vo = AssetManageService.readByName(search.getSearch());
				ArrayList<AssetManageVO> plc = new ArrayList<AssetManageVO>();
				ArrayList<AssetManageVO> pc = new ArrayList<AssetManageVO>();
				ArrayList<String> check1 = new ArrayList<String>();
				ArrayList<String> check2 = new ArrayList<String>();
				for(int i=0;i<vo.size();i++) {
					if(vo.get(i).getMain_device().equals("PLC")||vo.get(i).getMain_device().equals("DCS")) {
						plc.add(vo.get(i));
					    try {
							if(vo.get(i).getHash_logic().length()>0) check1.add("true");
							else check1.add("false");		 
					    } catch (NullPointerException ex) {
							check1.add("false");		 
					    }
					}else {
						pc.add(vo.get(i));
					    try {
							if(vo.get(i).getHash_logic().length()>0) check2.add("true");
							else check2.add("false");		 
					    } catch (NullPointerException ex) {
							check2.add("false");		 
					    }
					}
				}
				if(num.equals("1")) {
					model.addAttribute("vo",plc);
					model.addAttribute("check",check1);
					return "asset/integ_plc";
				}else {
					model.addAttribute("vo",pc);
					model.addAttribute("check",check2);
					return "asset/integ";
				}
	}	
	//asset_purchase 내용 다 채우기
	@RequestMapping(value="/purchase/add",method=RequestMethod.POST)
	public String createAssetPurchasePost(@ModelAttribute("asset") AssetPurchaseVO vo) throws Exception {
		AssetPurchaseService.add(vo);
		return "redirect:/asset/purchase";
	}
	
	//asset_purchase 내용 보여줌
	@RequestMapping(value="/purchase/read/{num}",method=RequestMethod.GET)
	public String readAssetPurchaseGet(@PathVariable("num") String num,Model model) throws Exception {
		 List<AssetPurchaseVO> vo;
		if(num.equals("1")) vo = AssetPurchaseService.readList();
		else vo = AssetPurchaseService.readListReverse();
		List<AssetManageVO> asset_name = new ArrayList<AssetManageVO>();
		AssetManageVO temp;
		
		for(int i=0;i<vo.size();i++) {
			temp = AssetManageService.readById(vo.get(i).getAsset_id());
			asset_name.add(temp);
		}
		model.addAttribute("vo",vo);
		model.addAttribute("asset_name",asset_name);
		return "asset/purchase";
	}
	@RequestMapping(value="/purchase/search/{num}",method=RequestMethod.POST)
	public String readAssetPurchaseByNameGet(@PathVariable("num") String num,@ModelAttribute("Search") SearchVO search,Model model) throws Exception {
		List<AssetManageVO> name = AssetManageService.readByName(search.getSearch());
		List<AssetPurchaseVO> vo = new ArrayList<AssetPurchaseVO>();
		for(int i=0;i<name.size();i++) {
			vo.add(AssetPurchaseService.readById(name.get(i).getAsset_id()));
		}
		List<AssetManageVO> asset_name = new ArrayList<AssetManageVO>();
		AssetManageVO temp;
		System.out.println("search : "+search.getSearch());
		System.out.println("vo크기:"+vo.size());
		for(int i=0;i<vo.size();i++) {
			temp = AssetManageService.readById(vo.get(i).getAsset_id());
			asset_name.add(temp);
		}
		model.addAttribute("vo",vo);
		model.addAttribute("asset_name",asset_name);
		return "asset/purchase";
	}
	
}