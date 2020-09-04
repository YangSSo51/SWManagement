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

import com.sw.web.domain.UserVO;
import com.sw.web.service.UserService;

@Controller
@RequestMapping(value="")
public class UserController {
	@Autowired
	private UserService UserSerivce;
	
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String createUserGet() throws Exception {
		return "user/create";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createUserPost(@ModelAttribute("User") UserVO vo) throws Exception {
		UserSerivce.addUser(vo);
		return "redirect:/user/read";
	}
	
	@RequestMapping(value="/read",method=RequestMethod.GET)
	public String readUserGet(Model model) throws Exception {
		List<UserVO> vo = UserSerivce.readUserList();
		model.addAttribute("user",vo);
		return "user/read";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.GET)
	public String updateUserGet(@RequestParam("id") int id, Model model) throws Exception {
		UserVO vo = UserSerivce.readUser(id);
		model.addAttribute("user",vo);
		return "user/update";
	}
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateUserGet(@ModelAttribute("User") UserVO vo) throws Exception {
		UserSerivce.updateUser(vo);
		System.out.println(vo.getName());
		return "redirect:/user/read";
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String deleteUser(@RequestParam("id") int id) throws Exception {
		UserSerivce.deleteUser(id);
		return "redirect:/user/read";
	}
	
	@RequestMapping(value = {"/login"}, method = RequestMethod.GET)
	public String loginMemberGet() throws Exception {
		logger.info(" /register URL GET method called. then forward login.jsp.");
		return "user/login";
	}
    
	@RequestMapping(value = {"/login"}, method = RequestMethod.POST)
	public String loginMemberPost( @ModelAttribute("User") UserVO vo,HttpSession session,Model model) throws Exception {
		boolean result = UserSerivce.login(vo,session);
		System.out.println(vo.getName());
		if(result == true) {
			model.addAttribute("result","로그인 성공");
		}else {
			model.addAttribute("result","로그인 실패");
		}
		return "user/result";
	}
	@RequestMapping(value= {"/logout"},method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) throws Exception {
		UserSerivce.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/member/login");
		mav.addObject("msg","logout");
		return mav;
	}
	
	@RequestMapping(value="/asset/perchase/{order}",method=RequestMethod.GET)
	public String asset_perchase(@PathVariable("order") String order) throws Exception {
		if(order.equals("asc")) return "test/asset_perchase";
		else return "test/asset_perchase2";
	}
	@RequestMapping(value="/asset/integ/{id}",method=RequestMethod.GET)
	public String asset_integ(@PathVariable("id") int id) throws Exception {
		if(id==1)return "test/asset_integ";
		else return "test/asset_integ2";
	}
	@RequestMapping(value="/common/code",method=RequestMethod.GET)
	public String common_code() throws Exception {
		return "test/common_code";
	}
	@RequestMapping(value="/common/code/detail/{id}",method=RequestMethod.GET)
	public String common_code_detail(@PathVariable("id") int id) throws Exception {
		if(id==1) return "test/common_code_detail";
		else return "test/common_code_detail2";
	}
	@RequestMapping(value="/config/keep",method=RequestMethod.GET)
	public String config_keep() throws Exception {
		return "test/config_keep";
	}
	
	@RequestMapping(value="/risk/read",method=RequestMethod.GET)
	public String risk_read() throws Exception {
		return "test/risk_read";
	}
	
	@RequestMapping(value="/risk/manage",method=RequestMethod.GET)
	public String risk_manage() throws Exception {
		return "test/risk_manage";
	}
	
	@RequestMapping(value="/integ/keep",method=RequestMethod.GET)
	public String integ_keep() throws Exception {
		return "test/integ_keep";
	}
	@RequestMapping(value="/integ/keep/detail",method=RequestMethod.GET)
	public String integ_keep_detail() throws Exception {
		return "test/integ_keep_detail";
	}
	@RequestMapping(value="/vul/check",method=RequestMethod.GET)
	public String vul_check() throws Exception {
		return "test/vul_check";
	}
}