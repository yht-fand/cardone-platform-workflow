package com.fand.support;

import java.io.IOException;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.Validate;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

/**
 * 模板支持
 * 
 * @author yaoht
 * 
 */
public class DefaultTemplateSupport implements TemplateSupport {
	/**
	 * 文件名解析格式
	 */
	public static String _FILE_PATH_FORMATE = "${filePath}.ftl";

	/**
	 * 文件名变量名称
	 */
	public static String _FILE_PATH_VARIABLE_NAME = "${filePath}";

	/**
	 * 日志
	 */
	private final static Log log = LogFactory.getLog(DefaultTemplateSupport.class);

	/**
	 * freemarker.template.Configuratio
	 */
	Configuration configuration;

	/**
	 * 文件名解析格式
	 */
	private String filePathFormate;

	/**
	 * 文件名变量名称
	 */
	private String filePathVariableName;

	@Override
	public String processTemplateIntoString(final String filePath, final boolean isFormatFilePath, final Object model) {
		Validate.notEmpty(filePath);

		String newFilePath = null;

		if (isFormatFilePath) {
			newFilePath = StringUtils.replace(this.filePathFormate, this.filePathVariableName, filePath);
		} else {
			newFilePath = filePath;
		}

		Template template;

		try {
			template = this.configuration.getTemplate(newFilePath);

			final String str = FreeMarkerTemplateUtils.processTemplateIntoString(template, model);

			DefaultTemplateSupport.log.debug(str);

			DefaultTemplateSupport.log.debug(model);

			return str;
		} catch (final IOException e) {
			throw new IllegalArgumentException(e);
		} catch (final TemplateException e) {
			throw new IllegalArgumentException(e);
		}
	}

	@Override
	public String processTemplateIntoString(final String filePath, final Object model) {
		return this.processTemplateIntoString(filePath, false, model);
	}

	/**
	 * 设置
	 * 
	 * @param configuration
	 *            freemarker.template.Configuratio
	 */
	public void setConfiguration(final Configuration configuration) {
		this.configuration = configuration;
	}

	/**
	 * 设置
	 * 
	 * @param filePathFormate
	 *            文件名解析格式
	 */
	public void setFilePathFormate(final String filePathFormate) {
		this.filePathFormate = StringUtils.defaultIfBlank(filePathFormate, DefaultTemplateSupport._FILE_PATH_FORMATE);
	}

	/**
	 * 设置
	 * 
	 * @param filePathVariableName
	 *            文件名变量名称
	 */
	public void setFilePathVariableName(final String filePathVariableName) {
		this.filePathVariableName = StringUtils.defaultIfBlank(filePathVariableName, DefaultTemplateSupport._FILE_PATH_VARIABLE_NAME);
	}
}
