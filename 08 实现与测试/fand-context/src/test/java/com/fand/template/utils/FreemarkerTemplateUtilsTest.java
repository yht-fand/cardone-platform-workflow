package com.fand.template.utils;

import java.util.Map;

import junit.framework.TestCase;

import com.google.common.collect.Maps;

public class FreemarkerTemplateUtilsTest extends TestCase {

	public void testProcessString() {
		String strTemplate = "<#if abc?exists>abc</#if>";

		Map<String, Object> model = Maps.newHashMap();

		String str = FreemarkerTemplateUtils.processString(strTemplate, null);

		System.out.println(str);

		model.put("abc", null);

		str = FreemarkerTemplateUtils.processString(strTemplate, model);

		System.out.println(str);

		model.put("abc", "ddd");

		str = FreemarkerTemplateUtils.processString(strTemplate, model);

		System.out.println(str);
	}

}
