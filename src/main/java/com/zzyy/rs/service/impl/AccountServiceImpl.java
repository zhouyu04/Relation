package com.zzyy.rs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.zzyy.rs.dao.AccountDao;
import com.zzyy.rs.service.AccountService;

public class AccountServiceImpl implements AccountService{

	@Autowired
	AccountDao accountDao;
	
	@Override
	public Long getTotalElement() {
		Long result = accountDao.getTotalElement();
		return result;
	}

}
