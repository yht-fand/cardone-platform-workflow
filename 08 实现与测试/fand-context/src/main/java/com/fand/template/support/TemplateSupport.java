package com.fand.template.support;

/**
 * 模板支持
 * 
 * @author haitao.yao
 */
public interface TemplateSupport {
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
