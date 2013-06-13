package com.fand.template.utils;

import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.IOUtils;

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
		StringWriter writer = null;

		Reader reader = null;

		try {
			writer = new StringWriter();

			String name = UUID.randomUUID().toString();

			reader = new StringReader(templateString);

			Configuration cfg = new Configuration();

			Template template = new Template(name, reader, cfg);

			template.process(model, writer);

			return writer.toString();
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			IOUtils.closeQuietly(reader);

			IOUtils.closeQuietly(writer);
		}
	}
}
