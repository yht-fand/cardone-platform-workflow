package com.fand.configuration.po;

import javax.persistence.Id;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 对象BLob属性
 * 
 * @author haitao.yao
 * 
 */
public class ObjectBlAt implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 604660489696395104L;

	/**
    * 标识
	 */
	public static final String ID_ = "id";

	/**
    * blob值
	 */
	public static final String BYTE_VA_ = "byteVa";

	/**
    * 标识
    */
	@Id
	String id;

	/**
    * blob值
    */
	Byte[] byteVa;

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
	 * @return blob值
	 */
	public Byte[] getByteVa() {
		return this.byteVa;
	}

	/**
	 * 设置
     *
	 * @param id
	 *            标识
	 */
	public ObjectBlAt setId(String id) {
		this.id = id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param byteVa
	 *            blob值
	 */
	public ObjectBlAt setByteVa(Byte[] byteVa) {
		this.byteVa = byteVa;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}