package com.grad.net.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grad.net.dto.JSONResult;
import com.grad.net.service.NotiService;
import com.grad.net.vo.NotiVo;


/**
 * 허규준
 */
@Controller("notiAPIController")
@RequestMapping("/noti/api")
public class NotiController {
	
	@Autowired
	NotiService notiService;
	
	@RequestMapping("/list")
	@ResponseBody
	public JSONResult getNotiList(@RequestParam("page") int page, @RequestParam("type") String type) {
		List<NotiVo> list = notiService.getNotiListByPage(page, type);
		System.out.println(page+"---"+type);
		return JSONResult.success(list);
		
	}

}
