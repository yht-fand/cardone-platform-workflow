package com.fand.configuration.service;

import java.util.List;
import java.util.Map;

import com.fand.builder.ModelArgs;
import com.fand.dto.PaginationDto;
import com.fand.extend.service.DefaultSimpleService;
import com.fand.configuration.service.DictService;
import com.fand.configuration.dao.DictDao;
import com.fand.configuration.dao.DictDao;
import com.fand.configuration.dao.DictSoDao;

/**
 * 字典
 *
 * @author yaoht
 * 
 */
public class DefaultDictService extends DefaultSimpleService<DictDao> implements DictService {
	/**
	 * 字典
	 */
	private DictDao dictDao;

	/**
	 * 字典分类
	 */
	private DictSoDao dictSoDao;


	/**
	 * 字典
	 * 
	 * @param dictDao
	 *            字典
	 */
	public void setDictDao(DictDao dictDao) {
		this.dictDao = dictDao;
	}

	/**
	 * 字典分类
	 * 
	 * @param dictSoDao
	 *            字典分类
	 */
	public void setDictSoDao(DictSoDao dictSoDao) {
		this.dictSoDao = dictSoDao;
	}
}