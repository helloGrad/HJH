
package com.grad.net.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.grad.net.vo.OrganzVo;

@Repository
public class AdminDao {
	
	@Autowired
	SqlSession sqlSession;

	
	/*
	 * 허주한
	 * */
	public boolean insertOrganz(OrganzVo organzVo) {
		return (1==sqlSession.insert("organz.insertOrganz", organzVo));
	}
	
}
