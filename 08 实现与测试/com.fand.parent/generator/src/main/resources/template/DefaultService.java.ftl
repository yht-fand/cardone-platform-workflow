<#include "macro_.ftl">
package ${packageCode}.${moduleMapperKey}.service;

import java.util.List;
import java.util.Map;

import com.fand.builder.ModelArgs;
import com.fand.dto.PaginationDto;
import com.fand.extend.service.DefaultSimpleService;
import ${packageCode}.${moduleMapperKey}.service.${businessCode}Service;
import ${packageCode}.${moduleMapperKey}.dao.${businessCode}Dao;
<#list entityList as entity>
import ${packageCode}.${moduleMapperKey}.dao.${entity}Dao;
</#list>

/**
 * ${businessMapper.name!businessCode}
 *
 * @author ${author!'yaoht'}
 * 
 */
public class Default${businessCode}Service extends DefaultSimpleService<${businessCode}Dao> implements ${businessCode}Service {
<#list poMapperList as poMapper>
	/**
	 * <@defaultIfBlank str="${poMapper.remarks!}" defaultSt="${poMapper.code!}"/>
	 */
	private ${poMapper.code}Dao ${poMapper.code?uncap_first}Dao;

</#list>
<#list poMapperList as poMapper>

	/**
	 * <@defaultIfBlank str="${poMapper.remarks!}" defaultSt="${poMapper.code!}"/>
	 * 
	 * @param ${poMapper.code?uncap_first}Dao
	 *            <@defaultIfBlank str="${poMapper.remarks!}" defaultSt="${poMapper.code!}"/>
	 */
	public void set${poMapper.code}Dao(${poMapper.code}Dao ${poMapper.code?uncap_first}Dao) {
		this.${poMapper.code?uncap_first}Dao = ${poMapper.code?uncap_first}Dao;
	}
</#list>
}