<#include "macro_.ftl">
package ${packageCode}.${moduleMapperKey}.dao;

import com.fand.persistent.support.JdbcDaoSupport;
import ${packageCode}.${moduleMapperKey}.dao.${poMapper.code}Dao;

/**
 * <@defaultIfBlank str="${poMapper.remarks!}" defaultSt="${poMapper.code!}"/>
 *
 * @author ${author!'haitao.yao'}
 * 
 */
public class Jdbc${poMapper.code}Dao extends JdbcDaoSupport implements ${poMapper.code}Dao {
}