<#include "macro_.ftl">
package ${packageCode}.${moduleMapperKey}.dao;

/**
 * <@defaultIfBlank str="${poMapper.remarks!}" defaultSt="${poMapper.code!}"/>
 *
 * @author ${author!'haitao.yao'}
 * 
 */
public interface ${poMapper.code}Dao {
	/**
	 * <@defaultIfBlank str="${poMapper.remarks!}" defaultSt="${poMapper.code!}"/> beanId
	 */
	public static final String BEAN_ID = "${packageCode}.${moduleMapperKey}.dao.${poMapper.code}Dao";
}