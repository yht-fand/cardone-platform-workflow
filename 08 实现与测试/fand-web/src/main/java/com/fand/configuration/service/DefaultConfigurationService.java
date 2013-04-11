package com.fand.configuration.service;

import java.util.List;
import java.util.Map;

import com.fand.persistent.core.builder.ModelArgs;
import com.fand.persistent.support.DefaultServiceSupport;
import com.fand.configuration.service.ConfigurationService;
import com.fand.configuration.dao.ConfigurationDao;
import com.fand.dto.PaginationDto;

/**
 * 配置
 *
 * @author haitao.yao
 * 
 */
public class DefaultConfigurationService extends DefaultServiceSupport<ConfigurationDao> implements ConfigurationService {
}