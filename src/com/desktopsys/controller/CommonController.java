package com.desktopsys.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ����: HJJ
 * @date ����ʱ�䣺2017-5-20 ����12:16:24
 * @Description
 * @version 1.0 
 */

@Controller
@Scope("prototype")
@RequestMapping(value = "/common")
public class CommonController {

	@RequestMapping(value = "/toMain.do")
	public String toMain() {
		System.out.println("toMain");
		
		return "main";
	}
}
