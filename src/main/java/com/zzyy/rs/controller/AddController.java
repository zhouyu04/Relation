package com.zzyy.rs.controller;

import com.zzyy.rs.entities.Append;
import com.zzyy.rs.service.AppendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zzyy.rs.entities.Account;
import com.zzyy.rs.entities.AccountModel;

@Controller
@RequestMapping(value = "/add/")
public class AddController {

	@Autowired
	AppendService appendService;

	@RequestMapping(value = "input", method = RequestMethod.POST)
	public String addEvent(@ModelAttribute("AccountModel") AccountModel accountModel){
		System.out.println(accountModel);
		for (Account account : accountModel.getAccounts()) {
			System.out.println(account.toString());
		}
		return "inputEvent";
	}

	@RequestMapping(value = "inputEvent", method = RequestMethod.POST)
	public String inputEvent(Append append,Model model){

		appendService.addAppend(append);
		AccountModel accountModel = new AccountModel();
		accountModel.add(new Account());
		accountModel.add(new Account());

		model.addAttribute("AccountModel", accountModel);
		return "input";
	}
	
}
