package com.fand.builder;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang.ArrayUtils;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;

/**
 * 对象参数
 * 
 * @author yaoht
 * 
 */
public class ModelArgs implements java.io.Serializable {
	/**
	 * 全部
	 */
	public final static String _ALL = "all";

	/**
	 * 总合
	 */
	public final static String _COUNT = "count";

	/**
	 * 创建
	 */
	public final static String _CREATE = "create";

	/**
	 * 默认忽略属性数组
	 */
	public static final String[] _DEFAULT_IGNORE_PROPERTIES = new String[] { "serialVersionUID" };

	/**
	 * 默认键值前缀名称
	 */
	public static final String _DEFAULT_KEY_PREFIX_NAME = "where__and__eq";

	/**
	 * 默认键值后缀名称
	 */
	public static final String _DEFAULT_KEY_SUFFIX_NAME = "value";

	/**
	 * 默认间隔
	 */
	public static final String _DEFAULT_SIMPLEPARATOR = "__";

	/**
	 * 字段
	 */
	public final static String _FIELD = "field";

	/**
	 * 查询
	 */
	public final static String _FIND = "find";

	/**
	 * 获取
	 */
	public final static String _GET = "get";

	/**
	 * 标识
	 */
	public final static String _ID = "id";

	/**
	 * 最大
	 */
	public final static String _MAX = "max";

	/**
	 * 最小
	 */
	public final static String _MIN = "min";

	/**
	 * 读取
	 */
	public final static String _READ = "read";

	/**
	 * 读取字段标识
	 */
	public final static String _READ_FIELD_ID = "read__field__id";

	/**
	 * 移除
	 */
	public final static String _REMOVE = "remove";

	/**
	 * 保存
	 */
	public final static String _SAVE = "save";

	/**
	 * 序列号
	 */
	private static final long serialVersionUID = -6258631484971104514L;

	/**
	 * 类型
	 */
	private Class<?> c;

	/**
	 * 忽略Annotation类型集合
	 */
	private List<Class<? extends Annotation>> ignoreAnnotationClassList;

	/**
	 * 忽略属性数组
	 */
	private String[] ignoreProperties;

	/**
	 * 键基本名称
	 */
	private String[] keyBaseNames;

	/**
	 * 键前缀名称
	 */
	private String keyPrefixName;

	/**
	 * 键后缀名称
	 */
	private String keySuffixName;

	/**
	 * 键值映射
	 */
	private Map<String, Object> kvMap;

	/**
	 * 对象
	 */
	private Object o;

	/**
	 * 跳过空值
	 */
	private Boolean skipNullValue;

	/**
	 * 使用Annotation类型集合
	 */
	private List<Class<? extends Annotation>> useAnnotationClassList;

	/**
	 * 使用属性数组
	 */
	private String[] useProperties;

	/**
	 * 值
	 */
	private Object value;

	/**
	 * 对象参数
	 */
	public ModelArgs() {
	}

	/**
	 * 对象参数
	 * 
	 * @param c
	 *            类型
	 */
	public ModelArgs(final Class<?> c) {
		this.c = c;
	}

	/**
	 * 对象参数
	 * 
	 * @param o
	 *            对象
	 */
	public ModelArgs(final Object o) {
		this.o = o;
	}

	/**
	 * 对象参数
	 * 
	 * @param o
	 *            对象
	 * @param c
	 *            类型
	 */
	public ModelArgs(final Object o, final Class<?> c) {
		this.o = o;
		this.c = c;
	}

	/**
	 * 对象参数
	 * 
	 * @param keyPrefixName
	 *            键前缀名称
	 * @param o
	 *            对象
	 * @param useProperties
	 *            使用属性数组
	 */
	public ModelArgs(final String keyPrefixName, final Object o, final String... useProperties) {
		this.keyPrefixName = keyPrefixName;
		this.o = o;
		this.useProperties = useProperties;
	}

	/**
	 * 添加
	 * 
	 * @param ignoreAnnotationClass
	 *            忽略Annotation
	 * @return 对象参数
	 */
	public ModelArgs addIgnoreAnnotationClassList(final Class<? extends Annotation> ignoreAnnotationClass) {
		if (CollectionUtils.isEmpty(this.ignoreAnnotationClassList)) {
			this.ignoreAnnotationClassList = Lists.newArrayList();

			this.ignoreAnnotationClassList.add(javax.persistence.Transient.class);
		}

		if (!this.ignoreAnnotationClassList.contains(ignoreAnnotationClass)) {
			this.ignoreAnnotationClassList.add(ignoreAnnotationClass);
		}

		return this;
	}

	/**
	 * 添加
	 * 
	 * @param useAnnotationClass
	 *            使用Annotation
	 * @return 对象参数
	 */
	public ModelArgs addUseAnnotationClassList(final Class<? extends Annotation> useAnnotationClass) {
		if (CollectionUtils.isEmpty(this.useAnnotationClassList)) {
			this.useAnnotationClassList = Lists.newArrayList();
		}

		this.useAnnotationClassList.add(useAnnotationClass);

		return this;
	}

	/**
	 * 获取
	 * 
	 * @return 类型
	 */
	public Class<?> getC() {
		return this.c;
	}

	/**
	 * 获取
	 * 
	 * @return 忽略Annotation类型集合
	 */
	public List<Class<? extends Annotation>> getIgnoreAnnotationClassList() {
		if (CollectionUtils.isEmpty(this.ignoreAnnotationClassList)) {
			this.ignoreAnnotationClassList = Lists.newArrayList();

			this.ignoreAnnotationClassList.add(javax.persistence.Transient.class);
		}

		return this.ignoreAnnotationClassList;
	}

	/**
	 * 获取
	 * 
	 * @return 忽略属性数组
	 */
	public String[] getIgnoreProperties() {
		if (ArrayUtils.isEmpty(this.ignoreProperties)) {
			return ModelArgs._DEFAULT_IGNORE_PROPERTIES;
		}

		return this.ignoreProperties;
	}

	/**
	 * 获取
	 * 
	 * @return 键基本名称
	 */
	public String[] getKeyBaseNames() {
		return this.keyBaseNames;
	}

	/**
	 * 获取
	 * 
	 * @return 键前缀名称
	 */
	public String getKeyPrefixName() {
		return this.keyPrefixName;
	}

	/**
	 * 获取
	 * 
	 * @return 键后缀名称
	 */
	public String getKeySuffixName() {
		return this.keySuffixName;
	}

	/**
	 * 获取
	 * 
	 * @return 键值映射
	 */
	public Map<String, Object> getKvMap() {
		return this.kvMap;
	}

	/**
	 * 获取
	 * 
	 * @return 对象
	 */
	public Object getO() {
		return this.o;
	}

	/**
	 * 获取
	 * 
	 * @return 跳过空值
	 */
	public Boolean getSkipNullValue() {
		return this.skipNullValue;
	}

	/**
	 * 获取
	 * 
	 * @return 使用Annotation类型集合
	 */
	public List<Class<? extends Annotation>> getUseAnnotationClassList() {
		return this.useAnnotationClassList;
	}

	/**
	 * 获取
	 * 
	 * @return 使用属性数组
	 */
	public String[] getUseProperties() {
		return this.useProperties;
	}

	/**
	 * 获取
	 * 
	 * @return 值
	 */
	public Object getValue() {
		return this.value;
	}

	public ModelArgs putKvMap(final String k, final Object v) {
		if (MapUtils.isEmpty(this.kvMap)) {
			this.kvMap = Maps.newHashMap();
		}

		this.kvMap.put(k, v);

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param c
	 *            类型
	 * @return 对象参数
	 */
	public ModelArgs setC(final Class<?> c) {
		this.c = c;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param ignoreAnnotationClassList
	 *            忽略Annotation类型集合
	 * @return 对象参数
	 */
	public ModelArgs setIgnoreAnnotationClassList(final List<Class<? extends Annotation>> ignoreAnnotationClassList) {
		this.ignoreAnnotationClassList = ignoreAnnotationClassList;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param ignoreProperties
	 *            忽略属性数组
	 */
	public ModelArgs setIgnoreProperties(final String... ignoreProperties) {
		this.ignoreProperties = ignoreProperties;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param keyBaseName
	 *            键基本名称
	 */
	public ModelArgs setKeyBaseNames(final String[] keyBaseNames) {
		this.keyBaseNames = keyBaseNames;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param keyPrefixName
	 *            键前缀名称
	 * @return 对象参数
	 */
	public ModelArgs setKeyPrefixName(final String keyPrefixName) {
		this.keyPrefixName = keyPrefixName;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param keySuffixName
	 *            键后缀名称
	 * @return 对象参数
	 */
	public ModelArgs setKeySuffixName(final String keySuffixName) {
		this.keySuffixName = keySuffixName;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param kvMap
	 *            键值映射
	 */
	public ModelArgs setKvMap(final Map<String, Object> kvMap) {
		this.kvMap = kvMap;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param o
	 *            对象
	 * @return 对象参数
	 */
	public ModelArgs setO(final Object o) {
		this.o = o;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param skipNullValue
	 *            跳过空值
	 * @return 对象参数
	 */
	public ModelArgs setSkipNullValue(final Boolean skipNullValue) {
		this.skipNullValue = skipNullValue;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param useAnnotationClassList
	 *            使用Annotation类型集合
	 * @return 对象参数
	 */
	public ModelArgs setUseAnnotationClassList(final List<Class<? extends Annotation>> useAnnotationClassList) {
		this.useAnnotationClassList = useAnnotationClassList;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param useProperties
	 *            使用属性数组
	 * @return 对象参数
	 */
	public ModelArgs setUseProperties(final String... useProperties) {
		this.useProperties = useProperties;

		return this;
	}

	/**
	 * 设置
	 * 
	 * @param value
	 *            值
	 */
	public ModelArgs setValue(final Object value) {
		this.value = value;

		return this;
	}
}
