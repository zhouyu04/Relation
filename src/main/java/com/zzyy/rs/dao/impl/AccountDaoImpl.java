package com.zzyy.rs.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zzyy.rs.dao.AccountDao;
import com.zzyy.rs.mapper.AccountMapper;
@Repository
public class AccountDaoImpl implements AccountDao {

	@Autowired
	AccountMapper accountMapper;
	
	@Override
	public Long getTotalElement() {
		
		
		return accountMapper.getTotalElement();
	}

}
