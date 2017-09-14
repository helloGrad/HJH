package com.grad.net;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.grad.net.security.Auth;
import com.grad.net.service.AdminService;
import com.grad.net.vo.NotiVo;
import com.grad.net.vo.OrganzVo;




@Auth(role=Auth.Role.ADMIN) 
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;	
	
	@RequestMapping({"", "/main"})
	public String main(Model model){
		
		
		return "admin/main";
	}
	
	/*
	 * 허주한
	 * */
	@RequestMapping("/list")
	public String registerOrganz() {
		
		return "admin/list";		
	}

	/*
	 * 허주한
	 * */
	@RequestMapping(value="/organz",method=RequestMethod.POST)
	public String registerOrganz(@ModelAttribute OrganzVo organzVo,
			@RequestParam String tabnm, @RequestParam String prntsOrgnzStr) {
		
		adminService.insertOrganz(organzVo, tabnm, prntsOrgnzStr);
		
		
		return "admin/list";		
	}
	
	
	@RequestMapping("/noti")
	public String registerNoti(@ModelAttribute NotiVo notiVo) {
		
		return "admin/list";		
	}
	
	

	
}
