package com.fand.template.support;

/**
 * 模板支持
 * 
 * @author haitao.yao
 */
public interface TemplateSupport {
	/**
	 * 默认文件名解析格式
	 */
	String DEFAULT_FILE_PATH_FORMATE = "${filePath}.ftl";

	/**
	 * 默认文件名变量名称
	 */
	String DEFAULT_FILE_PATH_VARIABLE_NAME = "${filePath}";

	/**
	 * 默认解析模板
	 * 
	 * @param filePath
	 *            文件路径
	 * @param isFormatFilePath
	 *            是否格式化文件路径
	 * @param model
	 *            数据
	 * 
	 * @return 解析后字符
	 */
	String processTemplateIntoString(String filePath, boolean isFormatFilePath, Object model);

	/**
	 * 解析模板
	 * 
	 * @param filePath
	 *            文件路径
	 * @param model
	 *            数据
	 * @return 解析后字符
	 */
	String processTemplateIntoString(String filePath, Object model);
}
