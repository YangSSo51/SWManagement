package com.sw.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpStatus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sw.web.domain.UserVO;
import com.sw.web.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
			
			
			@RequestMapping(value = "/login", method = RequestMethod.GET) //8080/web/login
			   public String logintest(Model model) throws Exception {
			       
			      
			      return "/user/login";//�븘 test 媛� �뤃�뜑��援�!
			   }
			
			// �쉶�썝媛��엯 get
			@RequestMapping(value = "/join", method = RequestMethod.GET) //8080/web/login
			   public String joinGet(Model model) throws Exception {
			      return "/user/join";      //�븘 test 媛� �뤃�뜑��援�!
			   }
			
			//�쉶�썝媛��엯 Post
			@ResponseBody
			@RequestMapping(value = "/join", method = RequestMethod.POST)
	         public String signupMemberPost(@RequestBody UserVO vo) throws Exception {
				 ModelAndView mav = new ModelAndView();
				try {
					logger.info(vo.getUser_id() +  " " + vo.getPassword() + " " + vo.getEmail());
					//mav.setViewName("home");
	            	userService.addUser(vo); //�뿬湲곗엳�뼱 �냼�쁺�븘 洹몃읆 �맂嫄곗븘�땲�삁�슂..?洹몃윴媛�遊먮씪怨� 源�誘쇱�媛� 洹몃윭�꽕
	            	//mav.addObject("msg", "success"); // 萸먯엫 �씠嫄� �옞源� �꽦�꽬
	            	//mav.addObject("url", "test/login");
	 	           
	            	logger.info(vo.toString());
		            logger.info(" /register URL GET method called. then forward join.jsp.");
		            return "success";
		            //return new ResponseEntity<>("ReplyRegisterOK", HttpStatus.OK);
	            
				} catch (NullPointerException e) {
	            	//mav.setViewName("redirect:/login");
					//mav.addObject("msg","failure");	
					return "fail";
	            }
	            //return "test/login";
	         }
			

			
			// �븘�씠�뵒 以묐났泥댄겕
			@RequestMapping(value = {"/idChk.do"},method = RequestMethod.POST, produces = "application/text; charset=utf8")
			@ResponseBody
			public String idCheck(HttpServletRequest request) throws Exception {
				
				String user_id = request.getParameter("user_id");
				int result=userService.idChk(user_id);
				return Integer.toString(result);
			}
			
		
			
			//濡쒓렇�씤 POST 踰꾩쟾 1
			@RequestMapping(value = {"/login"}, method = RequestMethod.POST)
			public ModelAndView loginMemberPost( @ModelAttribute("user") UserVO vo,HttpSession session, HttpServletRequest request, Model model, RedirectAttributes attr) throws Exception {
				boolean result = userService.login(vo, session);
				ModelAndView mav = new ModelAndView();
				if(result == true) {
				
					mav.setViewName("redirect:/asset/purchase/read/1");
					request.getSession().setAttribute("user", vo);
					
				}else {
					mav.setViewName("redirect:/login");
					mav.addObject("msg","failure");
					attr.addFlashAttribute("msg", false);
				}
				return mav;
			}
			
			
			/*
			//濡쒓렇�씤 POST 踰꾩쟾 2
			public String loginPost(@ModelAttribute("user") UserVO vo, Model model, HttpSession session,  HttpServletRequest request, RedirectAttributes attr) throws Exception {
				UserVO user = userService.login(vo, null);
				if (user != null && !user.getUser_id().equals("") && !user.getPassword().equals("")) {
					logger.info("�븘�씠�뵒: " + user.getUser_id());
					logger.info("鍮꾨쾲: " + user.getPassword());
					request.getSession().setAttribute("user", user);
					return "redirect:/";
					
					
				} else {
					request.getSession().setAttribute("user", null);
					attr.addFlashAttribute("msg", false);
					return "redirect:/login";
				
				}
			
				
				
			}
			 */  
			//濡쒓렇�븘�썐�쓣 援ы쁽�뻽�떎. 시러!
			@RequestMapping(value = "/logout", method = RequestMethod.GET) //8080/web/login
			   public String logout(HttpSession session) throws Exception {
				session.removeAttribute("user"); //Made By Minji
				session.invalidate();
				return "redirect:/";
			    
			}
			
			
}
