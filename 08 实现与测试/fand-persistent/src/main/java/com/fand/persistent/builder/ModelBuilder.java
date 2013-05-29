package com.fand.persistent.builder;

import java.util.Map;

/**
 * 对象映射生成器
 * 
 * @author haitao.yao
 * 
 */
public interface ModelBuilder {
	/**
	 * 全部
	 */
	String ALL = "all";

	/**
	 * 总合
	 */
	String COUNT = "count";

	/**
	 * 默认忽略属性数组
	 */
	String[] DEFAULT_IGNORE_PROPERTIES = new String[] { "serialVersionUID" };

	/**
	 * 默认键值前缀名称
	 */
	String DEFAULT_KEY_PREFIX = "where__and__eq";

	/**
	 * 默认键值后缀名称
	 */
	String DEFAULT_KEY_SUFFIX = "value";

	/**
	 * 默认间隔
	 */
	String DEFAULT_SIMPLEPARATOR = "__";

	/**
	 * 删除
	 */
	String DELETE = "delete";

	/**
	 * 标识
	 */
	String ID = "id";

	/**
	 * 创建
	 */
	String INSERT = "insert";

	/**
	 * 最大
	 */
	String MAX = "max";

	/**
	 * 最小
	 */
	String MIN = "min";

	/**
	 * 读取字段标识
	 */
	String OBJECT_ID = "object__id";

	/**
	 * 更新
	 */
	String UPDATE = "update";

	/**
	 * 对象映射生成
	 * 
	 * @return 对象映射
	 */
	Map<String, Object> build();

	/**
	 * 填充
	 * 
	 * @param keys
	 *            键数组
	 * @param value
	 *            值
	 * 
	 * @return 对象映射生成器
	 */
	ModelBuilder put(String[] keys, Object value);

	/**
	 * 充值扩展
	 * 
	 * @param keyPrefix
	 *            键前缀名称
	 * @param kvMap
	 *            键值映射
	 * @param keySuffix
	 *            键后缀名称
	 * @return 对象映射生成器
	 */
	ModelBuilder putExtend(String keyPrefix, Map<String, Object> kvMap, String keySuffix);

	/**
	 * 充值扩展
	 * 
	 * @param keyPrefix
	 *            键前缀名称
	 * @param keyBase
	 *            键名称
	 * @param keySuffix
	 *            键后缀名称
	 * @param value
	 *            值
	 * @return 对象映射生成器
	 */
	ModelBuilder putExtend(String keyPrefix, String keyBase, String keySuffix, Object value);

	/**
	 * 充值扩展
	 * 
	 * @param keyPrefix
	 *            键前缀名称
	 * @param keyBases
	 *            键名称集合
	 * @param keySuffix
	 *            键后缀名称
	 * @param value
	 *            值
	 * @return 对象映射生成器
	 */
	ModelBuilder putExtend(String keyPrefix, String[] keyBases, String keySuffix, Object value);

	/**
	 * 填充类型或对象字段
	 * 
	 * @param keyPrefix
	 *            键前缀名称
	 * @param keySuffix
	 *            键后缀名称
	 * @param o
	 *            对象
	 * @param c
	 *            类型
	 * @return 对象映射生成器
	 */
	ModelBuilder putObjectField(ModelArgs modelArgs);

	/**
	 * 充值true值
	 * 
	 * @param keys
	 *            键数组
	 * @return 对象映射生成器
	 */
	ModelBuilder putTrue(String... keys);

	/**
	 * 充值true值扩展
	 * 
	 * @param keyPrefix
	 *            键前缀名称
	 * @param keyBases
	 *            键基本名称
	 * @return 对象映射生成器
	 */
	ModelBuilder putTrueExtend(String keyPrefix, String... keyBases);

	/**
	 * 移除扩展
	 * 
	 * @param keys
	 *            键数组
	 * @return 对象映射生成器
	 */
	ModelBuilder remove(String... keys);

	/**
	 * 移除扩展
	 * 
	 * @param keyPrefix
	 *            键前缀名称
	 * @param keyBase
	 *            键基本名称
	 * @param keySuffix
	 *            键后缀名称
	 * @return 对象映射生成器
	 */
	ModelBuilder removeExtend(String keyPrefix, String keyBase, String keySuffix);

	/**
	 * 移除扩展
	 * 
	 * @param keyPrefix
	 *            键前缀名称
	 * @param keyBases
	 *            键基本名称集合
	 * @param keySuffix
	 *            键后缀名称
	 * @return 对象映射生成器
	 */
	ModelBuilder removeExtend(String keyPrefix, String[] keyBases, String keySuffix);

	/**
	 * 设置
	 * 
	 * @param defaultKeyPrefix
	 *            默认键值前缀名称
	 */
	ModelBuilder setDefaultKeyPrefix(String defaultKeyPrefix);

	/**
	 * 设置
	 * 
	 * @param defaultKeySuffix
	 *            默认键值后缀名称
	 */
	ModelBuilder setDefaultKeySuffix(String defaultKeySuffix);

	/**
	 * 设置
	 * 
	 * @param defaultSimpleparator
	 *            默认间隔
	 */
	ModelBuilder setDefaultSimpleparator(String defaultSimpleparator);
}