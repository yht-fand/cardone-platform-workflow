<#include "macro_.ftl">
package ${packageCode}.${moduleMapperKey}.service;

import java.util.List;
import java.util.Map;

import com.fand.persistent.builder.ModelArgs;
import com.fand.persistent.dto.PaginationDto;
import com.fand.persistent.support.ServiceSupport;

/**
 * ${businessMapper.name!businessCode}
 *
 * @author ${author!'haitao.yao'}
 */
public interface ${businessCode}Service extends ServiceSupport {
	/**
	 * ${businessMapper.name!businessCode} beanId
	 */
	public static final String BEAN_ID = "${packageCode}.${moduleMapperKey}.service.${businessCode}Service";
}