package com.fand.context.function;

/**
 * 方法
 * 
 * @author haitao.yao
 * 
 * @param <R>
 *            输出泛型
 */
public interface Function<R> {
	/**
	 * 执行
	 * 
	 * @return 输出泛型值
	 */
	R execution();
}
