package com.fand.configuration.po;

import javax.persistence.Id;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 地点
 * 
 * @author haitao.yao
 * 
 */
public class Locale implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 189219871317575073L;

	/**
    * 标识
	 */
	public static final String ID_ = "id";

	/**
    * 排序号
	 */
	public static final String ORDER_NU_ = "orderNu";

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
    * 排序号
    */
	Double orderNu;

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
	 * @return 排序号
	 */
	public Double getOrderNu() {
		return this.orderNu;
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
	public Locale setId(String id) {
		this.id = id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param orderNu
	 *            排序号
	 */
	public Locale setOrderNu(Double orderNu) {
		this.orderNu = orderNu;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param code
	 *            编号
	 */
	public Locale setCode(String code) {
		this.code = code;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}