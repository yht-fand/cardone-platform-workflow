package com.fand.persistent.builder;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.BooleanUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.reflect.FieldUtils;
import org.springframework.util.ReflectionUtils;
import org.springframework.util.ReflectionUtils.FieldCallback;
import org.springframework.util.ReflectionUtils.FieldFilter;

import com.google.common.collect.Maps;

/**
 * 默认映射生成器
 * 
 * @author haitao.yao
 * 
 */
public class DefaultModelBuilder implements ModelBuilder {
	/**
	 * 默认键值前缀名称
	 */
	protected String defaultKeyPrefix;

	/**
	 * 默认键值后缀名称
	 */
	protected String defaultKeySuffix;

	/**
	 * 默认间隔
	 */
	protected String defaultSimpleparator;

	/**
	 * 对象映射
	 */
	protected Map<String, Object> model;

	/**
	 * 对象映射生成器构造
	 */
	public DefaultModelBuilder() {
		this.model = Maps.newHashMap();
	}

	@Override
	public Map<String, Object> build() {
		return this.model;
	}

	@Override
	public ModelBuilder put(final String[] keys, final Object value) {
		if (ArrayUtils.isEmpty(keys)) {
			return this;
		}

		final String key = StringUtils.join(keys, StringUtils.defaultIfBlank(this.defaultSimpleparator, ModelArgs.DEFAULT_SIMPLEPARATOR));

		this.model.put(key, value);

		return this;
	}

	@Override
	public ModelBuilder putExtend(final String keyPrefix, final Map<String, Object> kvMap, final String keySuffix) {
		if (MapUtils.isEmpty(kvMap)) {
			return this;
		}

		for (final Entry<String, Object> entry : kvMap.entrySet()) {
			this.putExtend(keyPrefix, entry.getKey(), keySuffix, entry.getValue());
		}

		return this;
	}

	@Override
	public ModelBuilder putExtend(final String keyPrefix, final String keyBase, final String keySuffix, final Object value) {
		return this.putExtend(keyPrefix, keyBase, keySuffix, value);
	}

	@Override
	public ModelBuilder putExtend(String keyPrefix, final String[] keyBases, String keySuffix, final Object value) {
		if (ArrayUtils.isEmpty(keyBases)) {
			return this;
		}

		keyPrefix = com.fand.utils.StringUtils.defaultIfBlank(keyPrefix, this.defaultKeyPrefix, ModelArgs.DEFAULT_KEY_PREFIX);

		keySuffix = com.fand.utils.StringUtils.defaultIfBlank(keySuffix, this.defaultKeySuffix, ModelArgs.DEFAULT_KEY_SUFFIX);

		for (final String keyBase : keyBases) {
			this.putTrue(keyPrefix, keyBase);

			this.put(new String[] { keyPrefix, keyBase, keySuffix }, value);
		}

		return this;
	}

	@Override
	public ModelBuilder putObjectField(final ModelArgs modelArgs) {
		if (modelArgs == null) {
			return this;
		}

		if (modelArgs.getC() == null) {
			if (modelArgs.getO() == null) {
				return this;
			}

			modelArgs.setC(modelArgs.getO().getClass());
		}

		ReflectionUtils.doWithFields(modelArgs.getC(), new FieldCallback() {
			@Override
			public void doWith(final Field field) throws IllegalArgumentException, IllegalAccessException {
				final String fieldName = field.getName();

				if (modelArgs.getO() == null) {
					DefaultModelBuilder.this.putTrueExtend(modelArgs.getKeyPrefix(), fieldName);

					return;
				}

				final Object value = FieldUtils.readField(field, modelArgs.getO(), true);

				if (BooleanUtils.isTrue(modelArgs.getSkipNullValue())) {
					if (value == null) {
						return;
					}

					if ((value instanceof String) && StringUtils.isBlank(String.valueOf(value))) {
						return;
					}
				}

				DefaultModelBuilder.this.putExtend(modelArgs.getKeyPrefix(), fieldName, modelArgs.getKeySuffix(), value);
			}
		}, new FieldFilter() {
			@Override
			public boolean matches(final Field field) {
				if (ReflectionUtils.isPublicStaticFinal(field)) {
					return false;
				}

				final String fieldName = field.getName();

				if (ArrayUtils.contains(modelArgs.getIgnoreProperties(), fieldName)) {
					return false;
				}

				if (ArrayUtils.isNotEmpty(modelArgs.getUseProperties())) {
					return ArrayUtils.contains(modelArgs.getUseProperties(), fieldName);
				}

				if (CollectionUtils.isNotEmpty(modelArgs.getIgnoreAnnotationClassList())) {
					for (final Class<? extends Annotation> ignoreAnnotationClass : modelArgs.getIgnoreAnnotationClassList()) {
						if (field.isAnnotationPresent(ignoreAnnotationClass)) {
							return false;
						}
					}
				}

				if (CollectionUtils.isEmpty(modelArgs.getUseAnnotationClassList())) {
					return true;
				}

				for (final Class<? extends Annotation> useAnnotationClass : modelArgs.getUseAnnotationClassList()) {
					if (field.isAnnotationPresent(useAnnotationClass)) {
						return true;
					}
				}

				return false;
			}
		});

		return this;
	}

	@Override
	public ModelBuilder putTrue(final String... keys) {
		this.put(keys, Boolean.TRUE.toString());

		return this;
	}

	@Override
	public ModelBuilder putTrueExtend(String keyPrefix, final String... keyBases) {
		if (ArrayUtils.isEmpty(keyBases)) {
			return this;
		}

		keyPrefix = com.fand.utils.StringUtils.defaultIfBlank(keyPrefix, this.defaultKeyPrefix, ModelArgs.DEFAULT_KEY_PREFIX);

		for (final String keyBase : keyBases) {
			this.putTrue(keyPrefix, keyBase);
		}

		return this;
	}

	@Override
	public ModelBuilder remove(final String... keys) {
		if (ArrayUtils.isEmpty(keys)) {
			return this;
		}

		final String key = StringUtils.join(keys, StringUtils.defaultIfBlank(this.defaultSimpleparator, ModelArgs.DEFAULT_SIMPLEPARATOR));

		this.model.remove(key);

		return this;
	}

	@Override
	public ModelBuilder removeExtend(final String keyPrefix, final String keyBase, final String keySuffix) {
		return this.removeExtend(keyPrefix, keyBase, keySuffix);
	}

	@Override
	public ModelBuilder removeExtend(String keyPrefix, final String[] keyBases, String keySuffix) {
		if (ArrayUtils.isEmpty(keyBases)) {
			return this;
		}

		keyPrefix = com.fand.utils.StringUtils.defaultIfBlank(keyPrefix, this.defaultKeyPrefix, ModelArgs.DEFAULT_KEY_PREFIX);

		keySuffix = com.fand.utils.StringUtils.defaultIfBlank(keySuffix, this.defaultKeySuffix, ModelArgs.DEFAULT_KEY_SUFFIX);

		for (final String keyBase : keyBases) {
			this.remove(keyPrefix, keyBase);

			this.remove(keyPrefix, keyBase, keySuffix);
		}

		return this;
	}

	@Override
	public ModelBuilder setDefaultKeyPrefix(final String defaultKeyPrefix) {
		this.defaultKeyPrefix = defaultKeyPrefix;

		return this;
	}

	@Override
	public ModelBuilder setDefaultKeySuffix(final String defaultKeySuffix) {
		this.defaultKeySuffix = defaultKeySuffix;

		return this;
	}

	@Override
	public ModelBuilder setDefaultSimpleparator(final String defaultSimpleparator) {
		this.defaultSimpleparator = defaultSimpleparator;

		return this;
	}
}