package com.grad.net;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.grad.net.service.NotiService;
import com.grad.net.vo.PageVo;

@Controller
@RequestMapping("/noti")
public class NotiController {
	
	@Autowired
	NotiService notiService;
	
	
	/**
	 * 허규준
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String notiAllList(@ModelAttribute PageVo pageVo,@RequestParam(value="page", required=true ,defaultValue="-1") int page, Model model) {
		model.addAttribute("page", page);
		pageVo.calcPage(notiService.countNotiList("%"));
		model.addAttribute("pageVo", pageVo);
		model.addAttribute("notiList", notiService.getNotiList("%", pageVo));
		return "/noti/list";
	}
	
	/**
	 * 허규준
	 */
	@RequestMapping(value = "/grad", method = RequestMethod.GET)
	public String notiGradList(@ModelAttribute PageVo pageVo,@RequestParam(value="page", required=true ,defaultValue="1") int page, Model model) {
		model.addAttribute("page", page);
		pageVo.calcPage(notiService.countNotiList("대학원"));
		model.addAttribute("pageVo", pageVo);
		model.addAttribute("notiList", notiService.getNotiList("대학원", pageVo));
		return "/noti/gradlist";
	}
	
	/**
	 * 허규준
	 */
	@RequestMapping(value = "/lab", method = RequestMethod.GET)
	public String notiLabList(@ModelAttribute PageVo pageVo,@RequestParam(value="page", required=true ,defaultValue="1") int page, Model model) {
		
		model.addAttribute("page", page);
		
		pageVo.calcPage(notiService.countNotiList("연구실"));
		model.addAttribute("pageVo", pageVo);
		model.addAttribute("notiList", notiService.getNotiList("연구실", pageVo));		
		return "/noti/lablist";
	}
	
	/*
	 * 정예린, 박가혜
	 */		
	@RequestMapping("/detail")
	public String notiDetail(@RequestParam("no") int no, @RequestParam("tabnm") String tabnm, @RequestParam(value="page", required=true ,defaultValue="1") int page,  Model model) {
		
		/*
		 * 허주한
		 */
		model.addAttribute("page", page);
		model.addAttribute("nextNo", notiService.getNextNo(tabnm,no));
		model.addAttribute("prevNo", notiService.getPrevNo(tabnm,no));
		model.addAttribute("vo", notiService.getNoti(tabnm,no));
		if(tabnm.equals("대학원")){
			tabnm="grad";
		}
		else if(tabnm.equals("연구실")) {
			tabnm="lab";
		}
		return "/noti/detail"+tabnm;
	}

}
