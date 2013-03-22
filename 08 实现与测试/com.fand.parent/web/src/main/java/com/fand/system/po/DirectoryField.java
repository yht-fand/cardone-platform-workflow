package com.fand.system.po;

import java.util.Date;

import javax.persistence.Id;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 目录字段
 * 
 * @author yaoht
 * 
 */
public class DirectoryField implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 685166846195156383L;

	/**
    * double值
	 */
	public static final String _DOUBLE_VA_ = "doubleVa";

	/**
    * 结束时间
	 */
	public static final String _END_TI_ = "endTi";

	/**
    * 排序号
	 */
	public static final String _ORDER_NU_ = "orderNu";

	/**
    * 类型编号
	 */
	public static final String _TYPE_CODE_ = "typeCode";

	/**
    * 编号
	 */
	public static final String _CODE_ = "code";

	/**
    * string值
	 */
	public static final String _STRING_VA_ = "stringVa";

	/**
    * 标识
	 */
	public static final String _ID_ = "id";

	/**
    * 目录编号
	 */
	public static final String _DIRECTORY_CO_ = "directoryCo";

	/**
    * date值
	 */
	public static final String _DATE_VA_ = "dateVa";

	/**
    * 名称
	 */
	public static final String _NAME_ = "name";

	/**
    * 开始时间
	 */
	public static final String _BEGIN_TI_ = "beginTi";

	/**
    * long值
	 */
	public static final String _LONG_VA_ = "longVa";

	/**
    * 版本号
	 */
	public static final String _VERSION_NU_ = "versionNu";

	/**
    * text类型值
	 */
	public static final String _TEXT_VA_ = "textVa";

	/**
    * 分区编号
	 */
	public static final String _PARTITION_CO_ = "partitionCo";

	/**
    * double值
    */
	Long doubleVa;

	/**
    * 结束时间
    */
	Date endTi;

	/**
    * 排序号
    */
	Double orderNu;

	/**
    * 类型编号
    */
	String typeCode;

	/**
    * 编号
    */
	String code;

	/**
    * string值
    */
	String stringVa;

	/**
    * 标识
    */
	@Id
	String id;

	/**
    * 目录编号
    */
	String directoryCo;

	/**
    * date值
    */
	Date dateVa;

	/**
    * 名称
    */
	String name;

	/**
    * 开始时间
    */
	Date beginTi;

	/**
    * long值
    */
	Double longVa;

	/**
    * 版本号
    */
	Double versionNu;

	/**
    * text类型值
    */
	String textVa;

	/**
    * 分区编号
    */
	String partitionCo;

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
	 * @return 结束时间
	 */
	public Date getEndTi() {
		return this.endTi;
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
	 * @return 类型编号
	 */
	public String getTypeCode() {
		return this.typeCode;
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
	 * @return string值
	 */
	public String getStringVa() {
		return this.stringVa;
	}

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
	 * @return 目录编号
	 */
	public String getDirectoryCo() {
		return this.directoryCo;
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
	 * @return 名称
	 */
	public String getName() {
		return this.name;
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
	 * @return 版本号
	 */
	public Double getVersionNu() {
		return this.versionNu;
	}

	/**
     * 获取
     *
	 * @return text类型值
	 */
	public String getTextVa() {
		return this.textVa;
	}

	/**
     * 获取
     *
	 * @return 分区编号
	 */
	public String getPartitionCo() {
		return this.partitionCo;
	}

	/**
	 * 设置
     *
	 * @param doubleVa
	 *            double值
	 */
	public DirectoryField setDoubleVa(Long doubleVa) {
		this.doubleVa = doubleVa;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param endTi
	 *            结束时间
	 */
	public DirectoryField setEndTi(Date endTi) {
		this.endTi = endTi;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param orderNu
	 *            排序号
	 */
	public DirectoryField setOrderNu(Double orderNu) {
		this.orderNu = orderNu;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param typeCode
	 *            类型编号
	 */
	public DirectoryField setTypeCode(String typeCode) {
		this.typeCode = typeCode;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param code
	 *            编号
	 */
	public DirectoryField setCode(String code) {
		this.code = code;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param stringVa
	 *            string值
	 */
	public DirectoryField setStringVa(String stringVa) {
		this.stringVa = stringVa;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param id
	 *            标识
	 */
	public DirectoryField setId(String id) {
		this.id = id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param directoryCo
	 *            目录编号
	 */
	public DirectoryField setDirectoryCo(String directoryCo) {
		this.directoryCo = directoryCo;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param dateVa
	 *            date值
	 */
	public DirectoryField setDateVa(Date dateVa) {
		this.dateVa = dateVa;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param name
	 *            名称
	 */
	public DirectoryField setName(String name) {
		this.name = name;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param beginTi
	 *            开始时间
	 */
	public DirectoryField setBeginTi(Date beginTi) {
		this.beginTi = beginTi;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param longVa
	 *            long值
	 */
	public DirectoryField setLongVa(Double longVa) {
		this.longVa = longVa;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param versionNu
	 *            版本号
	 */
	public DirectoryField setVersionNu(Double versionNu) {
		this.versionNu = versionNu;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param textVa
	 *            text类型值
	 */
	public DirectoryField setTextVa(String textVa) {
		this.textVa = textVa;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param partitionCo
	 *            分区编号
	 */
	public DirectoryField setPartitionCo(String partitionCo) {
		this.partitionCo = partitionCo;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}