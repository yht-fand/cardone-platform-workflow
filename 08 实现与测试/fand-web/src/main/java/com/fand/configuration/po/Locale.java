package com.fand.configuration.po;

import java.util.Date;

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
	private static final long serialVersionUID = 249534580217607129L;

	/**
    * 标识
    */
	@Id
	String id;

	/**
    * 排序号
    */
	Double order;

	/**
    * 结束时间
    */
	Date endTi;

	/**
    * 编号
    */
	String code;

	/**
    * 开始时间
    */
	Date beginTi;

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
	public Double getOrder() {
		return this.order;
	}

	/**
     * 获取
     *
	 * @return 结束时间
	 */
	public Date getEndTi() {
		return this.endTi;
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
     * 获取
     *
	 * @return 开始时间
	 */
	public Date getBeginTi() {
		return this.beginTi;
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
	 * @param order
	 *            排序号
	 */
	public Locale setOrder(Double order) {
		this.order = order;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param endTi
	 *            结束时间
	 */
	public Locale setEndTi(Date endTi) {
		this.endTi = endTi;
		
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

	/**
	 * 设置
     *
	 * @param beginTi
	 *            开始时间
	 */
	public Locale setBeginTi(Date beginTi) {
		this.beginTi = beginTi;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}