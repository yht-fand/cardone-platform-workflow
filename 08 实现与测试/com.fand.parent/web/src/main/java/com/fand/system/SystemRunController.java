package com.fand.system;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fand.system.service.SystemRunService;

/**
 * 系统运行
 * 
 * @author yaoht
 */
@Controller
@RequestMapping("/systemRun")
public class SystemRunController {
	@Resource(name = SystemRunService._BEAN_ID)
	private SystemRunService systemRunService;

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "systemRun/index";
	}

	@RequestMapping(value = "/partition", method = RequestMethod.GET)
	public String partition() {
		return "systemRun/partition/index";
	}
}