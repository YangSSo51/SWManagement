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

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sw.web.domain.CodeMasterVO;
import com.sw.web.domain.CodeDetailVO;
import com.sw.web.service.CodeMasterService;
import com.sw.web.service.CodeDetailService;

@Controller
@RequestMapping(value="code")
public class CommonCodeController {
	
	@Autowired
	private CodeMasterService codeMasterService;
	private CodeDetailService codeDetailService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/*
	 * 대표코드 보여주기
	 */
	
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public String readCodeMasterGet(Model model) throws Exception {
		List<CodeMasterVO> vo = codeMasterService.readList();
		model.addAttribute("code",vo);
		return "test/common_code";
	}
	
	/*
	 * 대표코드 추가하기
	 */
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String createCodeMasterGet() throws Exception {
		return "test/common_code";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createCodeMasterPost(@ModelAttribute("code") CodeMasterVO vo) throws Exception {
		codeMasterService.add(vo);
		return "redirect:/code/read";
	}
	
	/*
	 * 대표코드 수정하기 팝업창
	 */
	
		
	@RequestMapping(value = "/modify_master.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getListbyId(Model model, int id) throws Exception {      
	      logger.info("readMasterName" + id);
	      Map<String, Object> map = new HashMap<String, Object>();
	      
	      CodeMasterVO vo =  codeMasterService.read(id);
	      logger.info(vo.getId() + " "+ vo.getReprec() + " " + vo.getReprec_n());
	    //map.put("pageMaker", pageMaker);
	      map.put("vo", vo);
	      return map; // 넘김
	      
	}
	
	/*
	 * 대표코드 수정 백엔드
	 */
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateCodeMasterPost(@ModelAttribute("code") CodeMasterVO vo) throws Exception {
		logger.info("updateCodeMasterPost");
		logger.info(vo.getId() + " " + vo.getReprec() + " " + vo.getReprec_n());
		codeMasterService.update(vo);
		return "redirect:/code/read";
	}
	
	
	   
	
	
	

}
