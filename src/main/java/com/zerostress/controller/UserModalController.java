package com.zerostress.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zerostress.command.UserInfoVO;
import com.zerostress.userinfo.service.UserInfoService;

@Controller

public class UserModalController {

	
	@Autowired
	@Qualifier("userinfoService")
	private UserInfoService userinfoService;
	
	
	@RequestMapping("/users/user_modal")
	public String userModal() {
		
		return "users/user_modal";
		
	}
	
	@ResponseBody
	@RequestMapping(value="/idCheck", method=RequestMethod.POST)
	public int userIdCheck(@RequestBody UserInfoVO vo) {
		
		//System.out.println(vo.toString());
		
		int result = userinfoService.idCheck(vo);
		System.out.println("아이디체크"+result);
		
		return result;
	}
	
	@RequestMapping(value="/JoinForm",method=RequestMethod.POST)
	public String joinUser(UserInfoVO vo, RedirectAttributes RA) {
		
		System.out.println(vo.toString());
		int result = userinfoService.join(vo);
		System.out.println(result);
		if(result==1) {
			RA.addFlashAttribute("msg", "회원가입되셨습니다");
		} else {
			RA.addFlashAttribute("msg", "회원가입에 실패했습니다");
		}
		return "redirect:/";
		
	}
	
	@RequestMapping(value="/LoginForm", method=RequestMethod.POST)
	public String loginUser(UserInfoVO vo, HttpSession session,
							RedirectAttributes RA) {

		System.out.println(vo.toString());
		int result = userinfoService.login(vo);

		if(result==1) {
			session.setAttribute("userId",vo.getUserId());
		} else {
			RA.addFlashAttribute("msg", "로그인에 실패했습니다");
		}
		
		return "redirect:/";
		
	}
	
	@RequestMapping("/users/userLogout")
	public String userLogout(HttpSession session) {
		
		session.invalidate(); //세션정보 삭제
		
		return "redirect:/";
	}
	
	
	@RequestMapping(value="/DeleteForm", method=RequestMethod.POST)
	public String deleteUser(UserInfoVO vo, HttpSession session, RedirectAttributes RA) {
		
		System.out.println(vo.toString());
		
		int result = userinfoService.delete(vo);
		
		if(result==1) {
			session.invalidate();
			RA.addFlashAttribute("msg", "회원탈퇴했습니다");
		} else {
			RA.addFlashAttribute("msg", "회원탈퇴를 실패했습니다");
		}
		
		return "redirect:/";
	}
	
	
}
