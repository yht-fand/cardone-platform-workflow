<#include "macro_.ftl">
package ${packageCode}.${moduleMapperKey}.service;

import java.util.List;
import java.util.Map;

import com.fand.persistent.builder.ModelArgs;
import com.fand.dto.PaginationDto;
import com.fand.persistent.support.DefaultServiceSupport;
import ${packageCode}.${moduleMapperKey}.service.${businessCode}Service;
import ${packageCode}.${moduleMapperKey}.dao.${businessCode}Dao;

/**
 * ${businessMapper.name!businessCode}
 *
 * @author ${author!'haitao.yao'}
 * 
 */
public class Default${businessCode}Service extends DefaultServiceSupport<${businessCode}Dao> implements ${businessCode}Service {
}