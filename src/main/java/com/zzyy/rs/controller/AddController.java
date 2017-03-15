package com.zzyy.rs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zzyy.rs.entities.Account;
import com.zzyy.rs.entities.AccountModel;

@Controller
@RequestMapping(value = "/add/")
public class AddController {

	@RequestMapping(value = "input", method = RequestMethod.POST)
	public String addEvent(@ModelAttribute("AccountModel") AccountModel accountModel){
		System.out.println(accountModel);
		for (Account account : accountModel.getAccounts()) {
			System.out.println(account.toString());
		}
		return "inputEvent";
	}
	
	
	
}
