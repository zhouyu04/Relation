package com.zzyy.rs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzyy.rs.dao.AccountDao;
import com.zzyy.rs.service.AccountService;
import com.zzyy.rs.service.baseService;

@Service
public class AccountServiceImpl extends baseService implements AccountService{

	@Autowired
	AccountDao accountDao;
	
	@Override
	public Long getTotalElement() {
		Long result = accountDao.getTotalElement();
		return result;
	}

}
