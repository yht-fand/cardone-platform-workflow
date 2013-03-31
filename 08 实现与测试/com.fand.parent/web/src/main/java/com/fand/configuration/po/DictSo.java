package com.fand.configuration.po;

import javax.persistence.Id;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 字典分类
 * 
 * @author yaoht
 * 
 */
public class DictSo implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 425256291578322617L;

	/**
    * 标识
	 */
	public static final String _ID_ = "id";

	/**
    * 父_标识
	 */
	public static final String _PARENT_ID_ = "parentId";

	/**
    * 名称
	 */
	public static final String _NAME_ = "name";

	/**
    * 排序号
	 */
	public static final String _ORDER_NU_ = "orderNu";

	/**
    * 编号
	 */
	public static final String _CODE_ = "code";

	/**
    * 标识
    */
	@Id
	String id;

	/**
    * 父_标识
    */
	String parentId;

	/**
    * 名称
    */
	String name;

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
	 * @return 父_标识
	 */
	public String getParentId() {
		return this.parentId;
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
	public DictSo setId(String id) {
		this.id = id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param parentId
	 *            父_标识
	 */
	public DictSo setParentId(String parentId) {
		this.parentId = parentId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param name
	 *            名称
	 */
	public DictSo setName(String name) {
		this.name = name;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param orderNu
	 *            排序号
	 */
	public DictSo setOrderNu(Double orderNu) {
		this.orderNu = orderNu;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param code
	 *            编号
	 */
	public DictSo setCode(String code) {
		this.code = code;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}