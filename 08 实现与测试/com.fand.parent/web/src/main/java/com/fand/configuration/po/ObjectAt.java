package com.fand.configuration.po;

import java.util.Date;

import javax.persistence.Id;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 对象属性
 * 
 * @author haitao.yao
 * 
 */
public class ObjectAt implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 462517105715405804L;

	/**
    * 标识
	 */
	public static final String ID_ = "id";

	/**
    * string值
	 */
	public static final String STRING_VA_ = "stringVa";

	/**
    * double值
	 */
	public static final String DOUBLE_VA_ = "doubleVa";

	/**
    * 对象类型标识
	 */
	public static final String OBJECT_TY_ID_ = "objectTyId";

	/**
    * date值
	 */
	public static final String DATE_VA_ = "dateVa";

	/**
    * 对象标识
	 */
	public static final String OBJECT_ID_ = "objectId";

	/**
    * 编号
	 */
	public static final String CODE_ = "code";

	/**
    * 类型标识
	 */
	public static final String TYPE_ID_ = "typeId";

	/**
    * long值
	 */
	public static final String LONG_VA_ = "longVa";

	/**
    * text值
	 */
	public static final String TEXT_VA_ = "textVa";

	/**
    * 标识
    */
	@Id
	String id;

	/**
    * string值
    */
	String stringVa;

	/**
    * double值
    */
	Long doubleVa;

	/**
    * 对象类型标识
    */
	String objectTyId;

	/**
    * date值
    */
	Date dateVa;

	/**
    * 对象标识
    */
	String objectId;

	/**
    * 编号
    */
	String code;

	/**
    * 类型标识
    */
	String typeId;

	/**
    * long值
    */
	Double longVa;

	/**
    * text值
    */
	String textVa;

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
	 * @return string值
	 */
	public String getStringVa() {
		return this.stringVa;
	}

	/**
     * 获取
     *
	 * @return double值
	 */
	public Long getDoubleVa() {
		return this.doubleVa;
	}

	/**
     * 获取
     *
	 * @return 对象类型标识
	 */
	public String getObjectTyId() {
		return this.objectTyId;
	}

	/**
     * 获取
     *
	 * @return date值
	 */
	public Date getDateVa() {
		return this.dateVa;
	}

	/**
     * 获取
     *
	 * @return 对象标识
	 */
	public String getObjectId() {
		return this.objectId;
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
	 * @return 类型标识
	 */
	public String getTypeId() {
		return this.typeId;
	}

	/**
     * 获取
     *
	 * @return long值
	 */
	public Double getLongVa() {
		return this.longVa;
	}

	/**
     * 获取
     *
	 * @return text值
	 */
	public String getTextVa() {
		return this.textVa;
	}

	/**
	 * 设置
     *
	 * @param id
	 *            标识
	 */
	public ObjectAt setId(String id) {
		this.id = id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param stringVa
	 *            string值
	 */
	public ObjectAt setStringVa(String stringVa) {
		this.stringVa = stringVa;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param doubleVa
	 *            double值
	 */
	public ObjectAt setDoubleVa(Long doubleVa) {
		this.doubleVa = doubleVa;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param objectTyId
	 *            对象类型标识
	 */
	public ObjectAt setObjectTyId(String objectTyId) {
		this.objectTyId = objectTyId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param dateVa
	 *            date值
	 */
	public ObjectAt setDateVa(Date dateVa) {
		this.dateVa = dateVa;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param objectId
	 *            对象标识
	 */
	public ObjectAt setObjectId(String objectId) {
		this.objectId = objectId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param code
	 *            编号
	 */
	public ObjectAt setCode(String code) {
		this.code = code;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param typeId
	 *            类型标识
	 */
	public ObjectAt setTypeId(String typeId) {
		this.typeId = typeId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param longVa
	 *            long值
	 */
	public ObjectAt setLongVa(Double longVa) {
		this.longVa = longVa;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param textVa
	 *            text值
	 */
	public ObjectAt setTextVa(String textVa) {
		this.textVa = textVa;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}