<#include "macro_.ftl">
package ${packageCode}.${moduleMapperKey}.service;

import java.util.List;
import java.util.Map;

import com.fand.builder.ModelArgs;
import com.fand.dto.PaginationDto;
import com.fand.extend.service.SimpleService;

/**
 * ${businessMapper.name!businessCode}
 *
 * @author ${author!'yaoht'}
 */
public interface ${businessCode}Service extends SimpleService {
	/**
	 * ${businessMapper.name!businessCode} beanId
	 */
	public static final String _BEAN_ID = "${packageCode}.${moduleMapperKey}.service.${businessCode}Service";
}