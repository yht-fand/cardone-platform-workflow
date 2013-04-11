package com.fand.utils;

import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.WordUtils;

/**
 * 字符串工具类
 * 
 * @author haitao.yao
 * 
 */
public class StringUtils {

	/**
	 * 返回不为空的字符串
	 * 
	 * @param str
	 *            字符串
	 * @param defaultStrs
	 *            默认字符串集合
	 * @return 不为空的字符串
	 */
	public static String defaultIfBlank(final String str, final String... defaultStrs) {
		if (org.apache.commons.lang.StringUtils.isNotBlank(str)) {
			return str;
		}

		if (ArrayUtils.isEmpty(defaultStrs)) {
			return str;
		}

		for (final String defaultStr : defaultStrs) {
			if (org.apache.commons.lang.StringUtils.isNotBlank(defaultStr)) {
				return defaultStr;
			}
		}

		return str;
	}

	/**
	 * 转为首字母小写的字符，并移除间隔字符
	 * 
	 * @param str
	 *            原字符
	 * @param delimiters
	 *            间隔字符
	 * @return 转换后字符
	 */
	public static String toCamelCase(String str, char... delimiters) {
		if (ArrayUtils.isEmpty(delimiters)) {
			delimiters = new char[] { '_' };
		}

		if (org.apache.commons.lang.StringUtils.containsAny(str, delimiters)) {
			str = StringUtils.toPascalCase(str, delimiters);
		}

		str = org.apache.commons.lang.StringUtils.uncapitalize(str);

		return str;
	}

	/**
	 * 转为首字母大写的字符，并移除间隔字符
	 * 
	 * @param str
	 *            原字符
	 * @param delimiters
	 *            间隔字符
	 * @return 转换后字符
	 */
	public static String toPascalCase(String str, char... delimiters) {
		if (ArrayUtils.isEmpty(delimiters)) {
			delimiters = new char[] { '_' };
		}

		if (org.apache.commons.lang.StringUtils.containsAny(str, delimiters)) {
			str = org.apache.commons.lang.StringUtils.lowerCase(str);

			str = WordUtils.capitalizeFully(str, delimiters);

			for (final char delimiter : delimiters) {
				str = org.apache.commons.lang.StringUtils.remove(str, delimiter);
			}
		} else {
			str = WordUtils.capitalizeFully(str);
		}

		return str;
	}
}
