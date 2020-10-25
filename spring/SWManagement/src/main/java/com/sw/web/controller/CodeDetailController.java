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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sw.web.domain.CodeMasterVO;
import com.sw.web.domain.UserVO;
import com.sw.web.domain.CodeDetailVO;
import com.sw.web.service.CodeMasterService;
import com.sw.web.service.CodeDetailService;

@Controller
@RequestMapping(value="detail")
public class CodeDetailController {
	
	@Autowired
	private CodeDetailService codeDetailService;
	@Autowired
	private CodeMasterService codeMasterservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	/*
	 * �긽�꽭肄붾뱶 蹂댁뿬二쇨린
	 */
	
	
	
	
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public String readCodeDetailGet(Model model, HttpSession session) throws Exception {
		UserVO user = (UserVO)session.getAttribute("user");
		List<CodeDetailVO> vo = codeDetailService.readList();
		List<CodeMasterVO> mvo = codeMasterservice.readList();
		model.addAttribute("user", user);
		model.addAttribute("code",vo);
		model.addAttribute("master",mvo);
		
		for(CodeMasterVO tmp:mvo) {
			logger.info(tmp.getId()+" " + tmp.getReprec()+ " " + tmp.getReprec_n());
		}
		return "code/common_code_detail";
	}
	
	@RequestMapping(value="/read/{name}", method=RequestMethod.GET)
	public String readCodeDetailGet(@PathVariable("name") String name,Model model) throws Exception {
		List<CodeDetailVO> vo = codeDetailService.readList();
		List<CodeMasterVO> mvo = codeMasterservice.readList();
		List<CodeDetailVO> temp = new ArrayList<CodeDetailVO>();
		if(name.equals("1")) {
			for(int i=0;i<10;i++) {
				temp.add(vo.get(i));
			}
		}else {
			for(int i=10;i<vo.size();i++) {
				temp.add(vo.get(i));
			}
		}
		model.addAttribute("code",temp);
		model.addAttribute("master",mvo);
		if(name.equals("1")) return "code/common_code_detail";
		else return "code/common_code_detail2";
	}
	/*
	 * �긽�꽭肄붾뱶 �벑濡앺븷 �븣 ���몴肄붾뱶 �뵒�뤃�듃濡� 蹂댁뿬二쇨린
	 */
	
	@RequestMapping(value = "/read.do", method = RequestMethod.GET)
	@ResponseBody
	   public Map<String, Object> readMasterName(Model model, String reprec) throws Exception {      
	      logger.info("readMasterName" + reprec);
	      Map<String, Object> map = new HashMap<String, Object>();
	      
	      CodeMasterVO vo =  codeMasterservice.read(reprec);
	      logger.info(vo.getId() + " "+ vo.getReprec_n() + " " + vo.getReprec_n());
	    //map.put("pageMaker", pageMaker);
	      map.put("vo", vo);
	      return map;
	      
	   }
	
	/*
	 * �긽�꽭肄붾뱶 �닔�젙�븯湲� �뙘�뾽李�
	 */
	
		
	@RequestMapping(value = "/modify_detail.do", method = RequestMethod.GET)
	@ResponseBody
	   public Map<String, Object> getListbyId(Model model, int id) throws Exception {      
	      logger.info("readMasterName" + id);
	      Map<String, Object> map = new HashMap<String, Object>();
	      
	      CodeDetailVO vo =  codeDetailService.read(id);
	      logger.info(vo.getId() + " "+ vo.getReprec() + " " + vo.getDetailc_n());
	    //map.put("pageMaker", pageMaker);
	      map.put("vo", vo);
	      return map; // �꽆源�
	      
	   }
	
	/*
	 * �긽�꽭肄붾뱶 �닔�젙 諛깆뿏�뱶
	 */
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateCodeDetailPost(@ModelAttribute("code") CodeDetailVO vo) throws Exception {
		logger.info("updateCodeDetailPost");
		codeDetailService.update(vo);
		return "redirect:/detail/read";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String createCodeDetailGet() throws Exception {
		return "code/common_code_detail";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createCodeDetailPost(@ModelAttribute("code") CodeDetailVO vo) throws Exception {
		logger.info("createCodeDetailPost");
		codeDetailService.add(vo);
		return "redirect:/detail/read/2";
	}
	
	
	
	

}
