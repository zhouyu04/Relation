package com.zzyy.rs.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zzyy.rs.dao.AccountDao;
import com.zzyy.rs.entities.Account;
import com.zzyy.rs.mapper.GridMapper;
@Repository
public class AccountDaoImpl implements AccountDao {

	@Autowired
	GridMapper gridmapper;
	
	@Override
	public Long getTotalElement() {
		
		
		return gridmapper.getTotalElement();
	}

	@Override
	public List<Account> getAccountLists() {
		List<Account> result = gridmapper.getAccountLists();
		return result;
	}

}
