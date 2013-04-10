package com.fand.function;

/**
 * 方法
 * 
 * @author haitao.yao
 * 
 * @param <R>
 *            输出泛型
 * @param <T>
 *            输入泛型
 */
public interface Function1<R, T> {
	/**
	 * 执行
	 * 
	 * @param t
	 *            输入泛型参数
	 * @return 输出泛型值
	 */
	R execution(T t);
}
