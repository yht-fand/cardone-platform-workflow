package com.fand.template.utils;

import java.io.StringReader;
import java.io.StringWriter;
import java.util.Map;
import java.util.UUID;

import freemarker.template.Configuration;
import freemarker.template.Template;

public class FreemarkerTemplateUtils {
	/**
	 * 渲染模板字符串
	 * 
	 * @param templateString
	 *            模板字符串
	 * @param model
	 *            映射对象
	 * @return 字符串
	 */
	public static String processString(String templateString, Map<String, ?> model) {
		try {
			StringWriter result = new StringWriter();

			Template template = new Template(UUID.randomUUID().toString(), new StringReader(templateString), new Configuration());

			template.process(model, result);

			return result.toString();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
