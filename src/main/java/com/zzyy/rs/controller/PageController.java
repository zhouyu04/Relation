package com.zzyy.rs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/Relation/rs/")
public class PageController {

	@RequestMapping(value = "coming")
	public String coming(){
		
		return "success";
	}
}
