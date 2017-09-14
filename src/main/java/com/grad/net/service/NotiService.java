package com.grad.net.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.net.repository.NotiDao;
import com.grad.net.vo.NotiVo;
import com.grad.net.vo.PageVo;

@Service
public class NotiService {
	
	@Autowired
	NotiDao notiDao;

	/**
	 * 허주한
	 */
	public List<NotiVo> getNotiList(String type, PageVo pageVo) {
		
		Map<String, Object> map =  new HashMap<String, Object>();
		
		map.put("type", type);
		map.put("pageVo", pageVo);
		
		return notiDao.getNotiList(map);
	}
	
	/**
	 * 허주한
	 */
	public List<NotiVo> getNotiListByPage(int page, String type) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>() ;
		map.put("page", page-1);
		map.put("type", type);
		return notiDao.getNotiListByPage(map);
	}

	/**
	 * 허주한
	 */
	public int countNotiList(String type) {
		
		return notiDao.countNotiList(type);
	}
	
	/*
	 * 정예린, 박가혜
	 */	
	public NotiVo getNoti(String tabnm, int no) {
		return notiDao.getByNo(tabnm,no);
		
	}
	/*
	 * 허주한
	 */
	public int getNextNo(String tabnm, int no) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>() ;
		map.put("tabnm", tabnm);
		map.put("no", no);
		return notiDao.getNextNo(map);
	}
	/*
	 * 허주한
	 */
	public int getPrevNo(String tabnm, int no) {
		Map<String, Object> map = new HashMap<String, Object>() ;
		map.put("tabnm", tabnm);
		map.put("no", no);
		return notiDao.getPrevNo(map);
	}

}
