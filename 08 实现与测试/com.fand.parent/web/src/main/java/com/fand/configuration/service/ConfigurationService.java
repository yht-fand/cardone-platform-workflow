package com.fand.configuration.service;

import java.util.List;
import java.util.Map;

import com.fand.persistent.builder.ModelArgs;
import com.fand.persistent.dto.PaginationDto;
import com.fand.persistent.support.ServiceSupport;

/**
 * 配置
 *
 * @author haitao.yao
 */
public interface ConfigurationService extends ServiceSupport {
	/**
	 * 配置 beanId
	 */
	public static final String _BEAN_ID = "com.fand.configuration.service.ConfigurationService";
}