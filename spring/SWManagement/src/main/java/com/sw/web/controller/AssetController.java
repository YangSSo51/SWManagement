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
import com.sw.web.domain.AssetPurchaseVO;
import com.sw.web.service.AssetManageService;

@Controller
@RequestMapping(value="asset")
public class AssetController {
	@Autowired
	private AssetManageService AssetManageService;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	//asset_manage에 기본정보 더해줌
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createAssetPost(@ModelAttribute("Asset") AssetManageVO vo) throws Exception {
		AssetManageService.add(vo);
		return "redirect:/asset/purchase";
	}
	
	//asset_manage 내용 보여줌
	@RequestMapping(value="/read/list",method=RequestMethod.GET)
	public String readAssetAllGet(Model model) throws Exception {
		List<AssetManageVO> vo = AssetManageService.readList();
		model.addAttribute("vo",vo);
		//설비유형에 따라 다르게 보여주기
		return "asset/integ";
	}
		
	//asset_manage 중 자산명과 asset_name으로 읽어옴 내용 보여줌
	@RequestMapping(value="/read/{name}",method=RequestMethod.GET)
	public String readAssetByNameGet(@PathVariable("name") String name,Model model) throws Exception {
		List<AssetManageVO> vo = AssetManageService.readByName(name);
		model.addAttribute("vo",vo);
		return "asset/integ";
	}
	
	//asset_purchase 내용 다 채우기
	@RequestMapping(value="/purchase/add",method=RequestMethod.POST)
	public String createAssetPurchasePost(@ModelAttribute("asset") AssetPurchaseVO vo) throws Exception {
		//전체 내용 add
		return "redirect:/asset/purchase";
	}
	
	//asset_purchase 내용 보여줌
	@RequestMapping(value="/purchase/read",method=RequestMethod.GET)
	public String readAssetPurchaseGet(Model model) throws Exception {
		//List<UserVO> vo = UserSerivce.readUserList();
		//model.addAttribute("user",vo);
		//날짜순에 따라 다르게 보여주기
		//현재시간 가져와서 등록일자 넣어줘야함
		return "asset/purchase";
	}

	
}