package com.fand.persistent.builder;

import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;

/**
 * 映射生成器工具
 * 
 * @author haitao.yao
 * 
 */
public class ModelBuilderUtils {
	/**
	 * 填充
	 * 
	 * @param modelBuilder
	 *            对象映射生成器
	 * @param modelArgss
	 *            对象参数
	 * @param isFilter
	 *            　是否成滤
	 * @param startsWiths
	 *            开头字符集合
	 */
	public static void put(final ModelBuilder modelBuilder, final ModelArgs[] modelArgss, final boolean isFilter, final String... startsWiths) {
		for (final ModelArgs modelArgs : modelArgss) {
			if (modelArgs == null) {
				continue;
			}

			if (ArrayUtils.isNotEmpty(startsWiths)) {
				boolean isStartsWith = !isFilter;

				for (final String startsWith : startsWiths) {
					if (StringUtils.startsWith(modelArgs.getKeyPrefix(), startsWith)) {
						isStartsWith = isFilter;

						break;
					}
				}

				if (isStartsWith) {
					continue;
				}
			}

			if (ArrayUtils.isNotEmpty(modelArgs.getKeyBases())) {
				modelBuilder.putExtend(modelArgs.getKeyPrefix(), modelArgs.getKeyBases(), modelArgs.getKeySuffix(), modelArgs.getValue());
			}

			if (MapUtils.isNotEmpty(modelArgs.getKvMap())) {
				modelBuilder.putExtend(modelArgs.getKeyPrefix(), modelArgs.getKvMap(), modelArgs.getKeySuffix());
			}

			if ((modelArgs.getO() != null) || (modelArgs.getC() != null)) {
				modelBuilder.putObjectField(modelArgs);
			}
		}
	}

	/**
	 * 填充
	 * 
	 * @param modelBuilder
	 *            对象映射生成器
	 * @param modelArgss
	 *            对象参数
	 * @param filters
	 *            过滤用.开头字符集合
	 */
	public static void putByFilters(final ModelBuilder modelBuilder, final ModelArgs[] modelArgss, final String... filters) {
		ModelBuilderUtils.put(modelBuilder, modelArgss, true, filters);
	}

	/**
	 * 填充
	 * 
	 * @param modelBuilder
	 *            对象映射生成器
	 * @param modelArgss
	 *            对象参数
	 * @param handles
	 *            处理用.开头字符集合
	 */
	public static void putByHandle(final ModelBuilder modelBuilder, final ModelArgs[] modelArgss, final String... handles) {
		ModelBuilderUtils.put(modelBuilder, modelArgss, false, handles);
	}
}
