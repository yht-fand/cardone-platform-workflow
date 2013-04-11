package com.fand.configuration.po;

import javax.persistence.Id;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 多国语言
 * 
 * @author haitao.yao
 * 
 */
public class I18n implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 607297812484035755L;

	/**
    * 标识
	 */
	public static final String ID_ = "id";

	/**
    * 编号
	 */
	public static final String CODE_ = "code";

	/**
    * 标识
    */
	@Id
	String id;

	/**
    * 编号
    */
	String code;

	/**
     * 获取
     *
	 * @return 标识
	 */
	public String getId() {
		return this.id;
	}

	/**
     * 获取
     *
	 * @return 编号
	 */
	public String getCode() {
		return this.code;
	}

	/**
	 * 设置
     *
	 * @param id
	 *            标识
	 */
	public I18n setId(String id) {
		this.id = id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param code
	 *            编号
	 */
	public I18n setCode(String code) {
		this.code = code;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}