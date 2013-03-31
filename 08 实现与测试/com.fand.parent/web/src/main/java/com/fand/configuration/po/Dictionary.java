package com.fand.configuration.po;

import javax.persistence.Id;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 字典
 * 
 * @author yaoht
 * 
 */
public class Dictionary implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 199688282252095973L;

	/**
    * 标识
	 */
	public static final String _ID_ = "id";

	/**
    * 字典类型标识
	 */
	public static final String _DICTIONARY_TY_ID_ = "dictionaryTyId";

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
    * 字典类型标识
    */
	String dictionaryTyId;

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
	 * @return 字典类型标识
	 */
	public String getDictionaryTyId() {
		return this.dictionaryTyId;
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
	public Dictionary setId(String id) {
		this.id = id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param dictionaryTyId
	 *            字典类型标识
	 */
	public Dictionary setDictionaryTyId(String dictionaryTyId) {
		this.dictionaryTyId = dictionaryTyId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param name
	 *            名称
	 */
	public Dictionary setName(String name) {
		this.name = name;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param orderNu
	 *            排序号
	 */
	public Dictionary setOrderNu(Double orderNu) {
		this.orderNu = orderNu;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param code
	 *            编号
	 */
	public Dictionary setCode(String code) {
		this.code = code;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}