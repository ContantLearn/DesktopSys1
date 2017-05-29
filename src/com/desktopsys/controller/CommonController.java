package com.desktopsys.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 作者: HJJ
 * @date 创建时间：2017-5-20 下午12:16:24
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
