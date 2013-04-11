package com.fand.configuration.po;

import javax.persistence.Id;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 消息
 * 
 * @author haitao.yao
 * 
 */
public class Message implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 578906415003023754L;

	/**
    * 标识
	 */
	public static final String ID_ = "id";

	/**
    * 内容
	 */
	public static final String CONTENT_ = "content";

	/**
    * 地点标识
	 */
	public static final String LOCALE_ID_ = "localeId";

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
    * 内容
    */
	String content;

	/**
    * 地点标识
    */
	String localeId;

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
	 * @return 内容
	 */
	public String getContent() {
		return this.content;
	}

	/**
     * 获取
     *
	 * @return 地点标识
	 */
	public String getLocaleId() {
		return this.localeId;
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
	public Message setId(String id) {
		this.id = id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param content
	 *            内容
	 */
	public Message setContent(String content) {
		this.content = content;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param localeId
	 *            地点标识
	 */
	public Message setLocaleId(String localeId) {
		this.localeId = localeId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param code
	 *            编号
	 */
	public Message setCode(String code) {
		this.code = code;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}