package com.fand.configuration;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fand.configuration.service.DictService;


/**
 * 系统运行
 * 
 * @author yaoht
 */
@Controller
@RequestMapping("/dict")
public class DictController {
	@Resource(name = DictService._BEAN_ID)
	private DictService dictService;

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "dict/index";
	}

	@RequestMapping(value = "/partition", method = RequestMethod.GET)
	public String partition() {
		return "dict/partition/index";
	}
}