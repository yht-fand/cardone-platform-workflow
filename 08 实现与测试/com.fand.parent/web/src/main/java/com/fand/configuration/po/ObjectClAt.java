package com.fand.configuration.po;

import javax.persistence.Id;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 对象CLob属性
 * 
 * @author haitao.yao
 * 
 */
public class ObjectClAt implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 496817635283722174L;

	/**
    * 标识
	 */
	public static final String ID_ = "id";

	/**
    * clob值
	 */
	public static final String CLOB_VA_ = "clobVa";

	/**
    * 标识
    */
	@Id
	String id;

	/**
    * clob值
    */
	String clobVa;

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
	 * @return clob值
	 */
	public String getClobVa() {
		return this.clobVa;
	}

	/**
	 * 设置
     *
	 * @param id
	 *            标识
	 */
	public ObjectClAt setId(String id) {
		this.id = id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param clobVa
	 *            clob值
	 */
	public ObjectClAt setClobVa(String clobVa) {
		this.clobVa = clobVa;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}