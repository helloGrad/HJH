package com.grad.net;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grad.net.security.Auth;
import com.grad.net.security.AuthUser;
import com.grad.net.service.CounselingService;
import com.grad.net.service.MemberService;
import com.grad.net.vo.CodeVo;
import com.grad.net.vo.CounselingVo;
import com.grad.net.vo.MemberVo;
import com.grad.net.vo.StudyVo;


@Controller
public class HomeController {


	@Autowired
	CounselingService counselingService;

	@Autowired
	MemberService memberService;

	/*
	 * 정예린 1027-09-13 메인 합치기 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( HttpServletRequest request,Model model, MemberVo memberVo, @RequestParam(value = "id", required = true, defaultValue = "-1") String id) {	

		HttpSession session = request.getSession(true);

		MemberVo authUser = (MemberVo) session.getAttribute("authUser");
		
		
		if(authUser!= null) {
			return "loginmain";
		}

		else {
			model.addAttribute("MemberVo", memberVo);		
			return "main";
		}

		

	}

	/*
	 * 정예린 1027-09-13 메인 합치기
	 */

	//@Auth(role = Auth.Role.USER)
	@RequestMapping(value = "/loginmain", method = RequestMethod.GET)
	public String home2(HttpServletRequest request, Model model, MemberVo memberVo) {	
		
		HttpSession session = request.getSession(true);

		MemberVo authUser = (MemberVo) session.getAttribute("authUser");
		
		if(authUser!=null) {
			List<CodeVo> codeList = memberService.getinfoList(authUser);
			List<StudyVo> BoardList = new ArrayList<StudyVo>();
			List<StudyVo> tempBoardList = memberService.getArticleByInfo(codeList,-1l);
			
			int days = -1;
			int num = 1;
			int preDays = -1;
			
			
			for(int i=0;i<tempBoardList.size();i++) {
				if(tempBoardList.get(i).getSlctnNotiDstnct().equals("대학원") || tempBoardList.get(i).getSlctnNotiDstnct().equals("연구실"))
					BoardList.add(tempBoardList.get(i));
			}
			
			model.addAttribute("myBoardList", BoardList);
		}
		
		model.addAttribute("MemberVo", memberVo);		
		return "loginmain";
	}


	////////////////////////////////////////////////////////////////////////////////////////////////

	/*
	 * 박가혜 2017-09-13 
	 */
	@RequestMapping(value = "/study/main", method = RequestMethod.GET)
	public String studyHome( Model model, MemberVo memberVo) {	
		model.addAttribute("MemberVo", memberVo);		
		return "study/home";
	}

	@RequestMapping(value = "/study/main", method = RequestMethod.POST)
	public String home1(Locale locale, Model model, @RequestBody MemberVo memberVo) {

		return "study/home";
	}


	@RequestMapping(value = "/study/notice", method = RequestMethod.GET)
	public String studyNotice( Model model, MemberVo memberVo) {	
		model.addAttribute("MemberVo", memberVo);		
		return "study/notice";
	}


	@RequestMapping(value = "/study/discussion", method = RequestMethod.GET)
	public String studyDiscussion( Model model, @AuthUser MemberVo authUser) {	


		model.addAttribute("authUser", authUser);


		return "study/discussion";
	}


	@RequestMapping(value = "/study/research", method = RequestMethod.GET)
	public String studyResearch( Model model, MemberVo memberVo) {	
		model.addAttribute("MemberVo", memberVo);		
		return "study/research";
	}


	@RequestMapping(value = "/study/lab", method = RequestMethod.GET)
	public String studyLab( Model model, MemberVo memberVo) {	
		model.addAttribute("MemberVo", memberVo);		
		return "study/lab";
	}


	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test( Model model, MemberVo memberVo) {	
		return "test";
	}


	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public String test2( Model model, MemberVo memberVo) {	
		return "mypage";
	}








}
