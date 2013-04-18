package com.fand.configuration.po;

import java.util.Date;

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
	private static final long serialVersionUID = 326568914397960245L;

	/**
    * 标识
	 */
	public static final String ID_ = "id";

	/**
    * 结束时间
	 */
	public static final String END_TI_ = "endTi";

	/**
    * blob值
	 */
	public static final String BYTE_VA_ = "byteVa";

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
    * 结束时间
    */
	Date endTi;

	/**
    * blob值
    */
	Byte[] byteVa;

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
	 * @return 结束时间
	 */
	public Date getEndTi() {
		return this.endTi;
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
	public ObjectBlAt setId(String id) {
		this.id = id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param endTi
	 *            结束时间
	 */
	public ObjectBlAt setEndTi(Date endTi) {
		this.endTi = endTi;
		
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

	/**
	 * 设置
     *
	 * @param beginTi
	 *            开始时间
	 */
	public ObjectBlAt setBeginTi(Date beginTi) {
		this.beginTi = beginTi;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}