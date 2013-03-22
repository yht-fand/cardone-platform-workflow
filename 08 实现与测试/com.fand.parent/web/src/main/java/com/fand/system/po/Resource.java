package com.fand.system.po;

import java.util.Date;

import javax.persistence.Id;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 资源
 * 
 * @author yaoht
 * 
 */
public class Resource implements java.io.Serializable {
	/**
	 * 开始时间
	 */
	public static final String _BEGIN_TI_ = "beginTi";

	/**
	 * 编号
	 */
	public static final String _CODE_ = "code";

	/**
	 * 目录编号
	 */
	public static final String _DIRECTORY_CO_ = "directoryCo";

	/**
	 * 结束时间
	 */
	public static final String _END_TI_ = "endTi";

	/**
	 * 标识
	 */
	public static final String _ID_ = "id";

	/**
	 * 名称
	 */
	public static final String _NAME_ = "name";

	/**
	 * 排序号
	 */
	public static final String _ORDER_NU_ = "orderNu";

	/**
	 * 父级编号
	 */
	public static final String _PARENT_CO_ = "parentCo";

	/**
	 * 分区编号
	 */
	public static final String _PARTITION_CO_ = "partitionCo";

	/**
	 * 类型编号
	 */
	public static final String _TYPE_CODE_ = "typeCode";

	/**
	 * 版本号
	 */
	public static final String _VERSION_NU_ = "versionNu";

	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 851835728057816842L;

	/**
	 * 开始时间
	 */
	Date beginTi;

	/**
	 * 编号
	 */
	String code;

	/**
	 * 目录编号
	 */
	String directoryCo;

	/**
	 * 结束时间
	 */
	Date endTi;

	/**
	 * 标识
	 */
	@Id
	String id;

	/**
	 * 名称
	 */
	String name;

	/**
	 * 排序号
	 */
	Double orderNu;

	/**
	 * 父级编号
	 */
	String parentCo;

	/**
	 * 分区编号
	 */
	String partitionCo;

	/**
	 * 类型编号
	 */
	String typeCode;

	/**
	 * 版本号
	 */
	Double versionNu;

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
	 * @return 编号
	 */
	public String getCode() {
		return this.code;
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
	 * @return 结束时间
	 */
	public Date getEndTi() {
		return this.endTi;
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
	 * @return 名称
	 */
	public String getName() {
		return this.name;
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
	 * @return 父级编号
	 */
	public String getParentCo() {
		return this.parentCo;
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
	 * @return 版本号
	 */
	public Double getVersionNu() {
		return this.versionNu;
	}

	/**
	 * 设置
	 * 
	 * @param beginTi
	 *            开始时间
	 */
	public Resource setBeginTi(final Date beginTi) {
		this.beginTi = beginTi;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param code
	 *            编号
	 */
	public Resource setCode(final String code) {
		this.code = code;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param directoryCo
	 *            目录编号
	 */
	public Resource setDirectoryCo(final String directoryCo) {
		this.directoryCo = directoryCo;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param endTi
	 *            结束时间
	 */
	public Resource setEndTi(final Date endTi) {
		this.endTi = endTi;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param id
	 *            标识
	 */
	public Resource setId(final String id) {
		this.id = id;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param name
	 *            名称
	 */
	public Resource setName(final String name) {
		this.name = name;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param orderNu
	 *            排序号
	 */
	public Resource setOrderNu(final Double orderNu) {
		this.orderNu = orderNu;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param parentCo
	 *            父级编号
	 */
	public Resource setParentCo(final String parentCo) {
		this.parentCo = parentCo;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param partitionCo
	 *            分区编号
	 */
	public Resource setPartitionCo(final String partitionCo) {
		this.partitionCo = partitionCo;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param typeCode
	 *            类型编号
	 */
	public Resource setTypeCode(final String typeCode) {
		this.typeCode = typeCode;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param versionNu
	 *            版本号
	 */
	public Resource setVersionNu(final Double versionNu) {
		this.versionNu = versionNu;

		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}