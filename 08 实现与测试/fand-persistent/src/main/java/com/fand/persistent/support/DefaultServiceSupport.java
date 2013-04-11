package com.fand.persistent.support;


/**
 * service
 * 
 * @author haitao.yao
 * 
 * @param <Dao>
 */
public class DefaultServiceSupport<Dao> implements ServiceSupport {
	/**
	 * dao
	 */
	protected Dao dao;

	/**
	 * 设置
	 * 
	 * @param dao
	 *            dao
	 */
	public void setDao(final Dao dao) {
		this.dao = dao;
	}
}
