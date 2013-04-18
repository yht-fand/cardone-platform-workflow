package com.fand.configuration.po;

import java.util.Date;

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
	private static final long serialVersionUID = 467257634982816320L;

	/**
    * 标识
	 */
	public static final String ID_ = "id";

	/**
    * clob值
	 */
	public static final String CLOB_VA_ = "clobVa";

	/**
    * 结束时间
	 */
	public static final String END_TI_ = "endTi";

	/**
    * 开始时间
	 */
	public static final String BEGIN_TI_ = "beginTi";

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
    * 结束时间
    */
	Date endTi;

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
	 * @return clob值
	 */
	public String getClobVa() {
		return this.clobVa;
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

	/**
	 * 设置
     *
	 * @param endTi
	 *            结束时间
	 */
	public ObjectClAt setEndTi(Date endTi) {
		this.endTi = endTi;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param beginTi
	 *            开始时间
	 */
	public ObjectClAt setBeginTi(Date beginTi) {
		this.beginTi = beginTi;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}