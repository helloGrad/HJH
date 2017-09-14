
package com.grad.net.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.net.repository.AdminDao;
import com.grad.net.vo.OrganzVo;

@Service
public class AdminService {
	
	@Autowired
	AdminDao adminDao;

	/*
	 * 허주한
	 * */
	public boolean insertOrganz(OrganzVo organzVo, String tabnm, String prntsOrgnzStr) {
		if(prntsOrgnzStr.isEmpty() || prntsOrgnzStr.equals(null)) {
			organzVo.setPrntsOrgnzNo(-1);
		} else {
			organzVo.setPrntsOrgnzNo(Integer.parseInt(prntsOrgnzStr));
		}
		
		return adminDao.insertOrganz(organzVo);
	}

}
