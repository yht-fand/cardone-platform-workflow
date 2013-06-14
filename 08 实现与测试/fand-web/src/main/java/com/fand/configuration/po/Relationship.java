package com.fand.configuration.po;

import java.util.Date;

import javax.persistence.Id;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 关联
 * 
 * @author haitao.yao
 * 
 */
public class Relationship implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 350409480671832980L;

	/**
    * 对象3标识
    */
	String object3Id;

	/**
    * 对象6类型标识
    */
	String object6TyId;

	/**
    * 对象1类型标识
    */
	String object1TyId;

	/**
    * 对象4类型标识
    */
	String object4TyId;

	/**
    * 结束时间
    */
	Date endTi;

	/**
    * 对象7类型标识
    */
	String object7TyId;

	/**
    * 对象4标识
    */
	String object4Id;

	/**
    * 对象7标识
    */
	String object7Id;

	/**
    * 标识
    */
	@Id
	String id;

	/**
    * 对象2类型标识
    */
	String object2TyId;

	/**
    * 对象8类型标识
    */
	String object8TyId;

	/**
    * 对象8标识
    */
	String object8Id;

	/**
    * 对象6标识
    */
	String object6Id;

	/**
    * 对象5标识
    */
	String object5Id;

	/**
    * 对象5类型标识
    */
	String object5TyId;

	/**
    * 对象3类型标识
    */
	String object3TyId;

	/**
    * 对象1标识
    */
	String object1Id;

	/**
    * 对象2标识
    */
	String object2Id;

	/**
    * 开始时间
    */
	Date beginTi;

	/**
    * 对象9类型标识
    */
	String object9TyId;

	/**
    * 对象9标识
    */
	String object9Id;

	/**
     * 获取
     *
	 * @return 对象3标识
	 */
	public String getObject3Id() {
		return this.object3Id;
	}

	/**
     * 获取
     *
	 * @return 对象6类型标识
	 */
	public String getObject6TyId() {
		return this.object6TyId;
	}

	/**
     * 获取
     *
	 * @return 对象1类型标识
	 */
	public String getObject1TyId() {
		return this.object1TyId;
	}

	/**
     * 获取
     *
	 * @return 对象4类型标识
	 */
	public String getObject4TyId() {
		return this.object4TyId;
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
	 * @return 对象7类型标识
	 */
	public String getObject7TyId() {
		return this.object7TyId;
	}

	/**
     * 获取
     *
	 * @return 对象4标识
	 */
	public String getObject4Id() {
		return this.object4Id;
	}

	/**
     * 获取
     *
	 * @return 对象7标识
	 */
	public String getObject7Id() {
		return this.object7Id;
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
	 * @return 对象2类型标识
	 */
	public String getObject2TyId() {
		return this.object2TyId;
	}

	/**
     * 获取
     *
	 * @return 对象8类型标识
	 */
	public String getObject8TyId() {
		return this.object8TyId;
	}

	/**
     * 获取
     *
	 * @return 对象8标识
	 */
	public String getObject8Id() {
		return this.object8Id;
	}

	/**
     * 获取
     *
	 * @return 对象6标识
	 */
	public String getObject6Id() {
		return this.object6Id;
	}

	/**
     * 获取
     *
	 * @return 对象5标识
	 */
	public String getObject5Id() {
		return this.object5Id;
	}

	/**
     * 获取
     *
	 * @return 对象5类型标识
	 */
	public String getObject5TyId() {
		return this.object5TyId;
	}

	/**
     * 获取
     *
	 * @return 对象3类型标识
	 */
	public String getObject3TyId() {
		return this.object3TyId;
	}

	/**
     * 获取
     *
	 * @return 对象1标识
	 */
	public String getObject1Id() {
		return this.object1Id;
	}

	/**
     * 获取
     *
	 * @return 对象2标识
	 */
	public String getObject2Id() {
		return this.object2Id;
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
	 * @return 对象9类型标识
	 */
	public String getObject9TyId() {
		return this.object9TyId;
	}

	/**
     * 获取
     *
	 * @return 对象9标识
	 */
	public String getObject9Id() {
		return this.object9Id;
	}

	/**
	 * 设置
     *
	 * @param object3Id
	 *            对象3标识
	 */
	public Relationship setObject3Id(String object3Id) {
		this.object3Id = object3Id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object6TyId
	 *            对象6类型标识
	 */
	public Relationship setObject6TyId(String object6TyId) {
		this.object6TyId = object6TyId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object1TyId
	 *            对象1类型标识
	 */
	public Relationship setObject1TyId(String object1TyId) {
		this.object1TyId = object1TyId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object4TyId
	 *            对象4类型标识
	 */
	public Relationship setObject4TyId(String object4TyId) {
		this.object4TyId = object4TyId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param endTi
	 *            结束时间
	 */
	public Relationship setEndTi(Date endTi) {
		this.endTi = endTi;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object7TyId
	 *            对象7类型标识
	 */
	public Relationship setObject7TyId(String object7TyId) {
		this.object7TyId = object7TyId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object4Id
	 *            对象4标识
	 */
	public Relationship setObject4Id(String object4Id) {
		this.object4Id = object4Id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object7Id
	 *            对象7标识
	 */
	public Relationship setObject7Id(String object7Id) {
		this.object7Id = object7Id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param id
	 *            标识
	 */
	public Relationship setId(String id) {
		this.id = id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object2TyId
	 *            对象2类型标识
	 */
	public Relationship setObject2TyId(String object2TyId) {
		this.object2TyId = object2TyId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object8TyId
	 *            对象8类型标识
	 */
	public Relationship setObject8TyId(String object8TyId) {
		this.object8TyId = object8TyId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object8Id
	 *            对象8标识
	 */
	public Relationship setObject8Id(String object8Id) {
		this.object8Id = object8Id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object6Id
	 *            对象6标识
	 */
	public Relationship setObject6Id(String object6Id) {
		this.object6Id = object6Id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object5Id
	 *            对象5标识
	 */
	public Relationship setObject5Id(String object5Id) {
		this.object5Id = object5Id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object5TyId
	 *            对象5类型标识
	 */
	public Relationship setObject5TyId(String object5TyId) {
		this.object5TyId = object5TyId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object3TyId
	 *            对象3类型标识
	 */
	public Relationship setObject3TyId(String object3TyId) {
		this.object3TyId = object3TyId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object1Id
	 *            对象1标识
	 */
	public Relationship setObject1Id(String object1Id) {
		this.object1Id = object1Id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object2Id
	 *            对象2标识
	 */
	public Relationship setObject2Id(String object2Id) {
		this.object2Id = object2Id;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param beginTi
	 *            开始时间
	 */
	public Relationship setBeginTi(Date beginTi) {
		this.beginTi = beginTi;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object9TyId
	 *            对象9类型标识
	 */
	public Relationship setObject9TyId(String object9TyId) {
		this.object9TyId = object9TyId;
		
		return this;
	}

	/**
	 * 设置
     *
	 * @param object9Id
	 *            对象9标识
	 */
	public Relationship setObject9Id(String object9Id) {
		this.object9Id = object9Id;
		
		return this;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}