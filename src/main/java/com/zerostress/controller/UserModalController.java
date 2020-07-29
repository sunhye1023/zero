package com.zerostress.controller;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	//user_modal화면 처리
	@RequestMapping("/users/user_modal")
	public String userModal() {
		
		return "users/user_modal";
		
	}
	
	//회원가입-id중복확인
	@ResponseBody
	@RequestMapping(value="/idCheck", method=RequestMethod.POST)
	public int userIdCheck(@RequestBody UserInfoVO vo) {
		
		//System.out.println(vo.toString());
		
		int result = userinfoService.idCheck(vo);
		//System.out.println("아이디체크"+result);
		
		return result;
	}
	
	//회원가입
	@RequestMapping(value="/JoinForm",method=RequestMethod.POST)
	public String joinUser(UserInfoVO vo, RedirectAttributes RA) {
		
		//System.out.println(vo.toString());

		int result = userinfoService.join(vo);
		//System.out.println(result);
		if(result==1) {
			RA.addFlashAttribute("msg", "회원가입되었습니다");
		} else {
			RA.addFlashAttribute("msg", "회원가입에 실패했습니다");
		}
		return "redirect:/";
		
	}
	
	//로그인
	@RequestMapping(value="/LoginForm", method=RequestMethod.POST)
	public String loginUser(UserInfoVO vo, HttpSession session,
							RedirectAttributes RA) {

		//System.out.println(vo.toString());
		int result = userinfoService.login(vo);

		if(result==1) {
			session.setAttribute("userId",vo.getUserId());
			RA.addFlashAttribute("msg", "로그인되었습니다");
		} else {
			RA.addFlashAttribute("msg", "로그인에 실패했습니다");
		}
		
		return "redirect:/";
		
	}
	
	//로그아웃
	@RequestMapping("/users/userLogout")
	public String userLogout(HttpSession session) {
		
		session.invalidate(); //세션정보 삭제
		
		return "redirect:/";
	}
	
	
	//회원정보
	@RequestMapping(value="/UpdateForm", method=RequestMethod.POST)
	public String updateUser(UserInfoVO vo, HttpSession session, Model model, RedirectAttributes RA) {
		System.out.println(1);
		String userId = (String)session.getAttribute("userId");
		UserInfoVO infoVO = userinfoService.info(userId);
		System.out.println(infoVO.toString());
		
		model.addAttribute("infoVO", infoVO);
		
		int result = userinfoService.update(infoVO);
		
		if(result==1) {
			RA.addFlashAttribute("msg", "회원정보를 수정했습니다");
		}
		
		return "redirect:/";

	}
	
	
	//회원탈퇴-pw확인
	@ResponseBody
	@RequestMapping(value="/pwCheck", method=RequestMethod.POST)
	public int userPwCheck(@RequestBody UserInfoVO vo) {
		
		//System.out.println(vo.toString());
		
		int result = userinfoService.pwCheck(vo);
		System.out.println("pw확인"+result);
		
		return result;
	}
	
	//회원탈퇴
	@RequestMapping(value="/DeleteForm", method=RequestMethod.POST)
	public String deleteUser(UserInfoVO vo, HttpSession session, RedirectAttributes RA) {
		
		String userId = (String)session.getAttribute("userId");
		
		int result = userinfoService.delete(userId);
		
		if(result==0) {
			session.invalidate();
		}
		
		
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
}
