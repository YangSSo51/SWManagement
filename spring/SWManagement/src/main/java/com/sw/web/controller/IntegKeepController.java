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
import java.util.List;

import com.sw.web.domain.AssetManageVO;
import com.sw.web.domain.AssetPurchaseVO;
import com.sw.web.service.AssetManageService;

@Controller
@RequestMapping(value="integ")
public class IntegKeepController {
	@Autowired
	private AssetManageService AssetManageService;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	//integ_keep에 기본정보 더해줌
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createAssetPost(@ModelAttribute("Asset") AssetManageVO vo) throws Exception {
		//asset_manage에서 readById로 integ_count값 가져와서 하나 증가시키고 version에 넣어주기
		//asset_id값 가져와서 넘겨주기
		AssetManageService.add(vo);
		
		return "redirect:/asset/purchase";
	}
	
	//asset_manage 내용 보여줌
	@RequestMapping(value="/read/list",method=RequestMethod.GET)
	public String readAssetAllGet(Model model) throws Exception {
		List<AssetManageVO> vo = AssetManageService.readList();
		model.addAttribute("vo",vo);
		//asset_id로 자산명 가져와서 보여주기
		return "asset/integ";
	}
		
	//자산명,점검연도,적합 여부에 따라 검색결과를 출력해줌
	@RequestMapping(value="/read/{name}",method=RequestMethod.GET)
	public String readAssetByNameGet(@PathVariable("name") String name,Model model) throws Exception {
		List<AssetManageVO> vo = AssetManageService.readByName(name);
		model.addAttribute("vo",vo);
		//asset_manage에서 readByName으로 id값을 가져오고
		//가져온 id의 갯수만큼 점검 연도,적합 여부로 다시 검색
		return "asset/integ";
	}
	


	
}