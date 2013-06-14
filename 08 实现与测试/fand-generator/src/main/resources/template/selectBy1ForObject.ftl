SELECT
<${r"#"}switch (select__object__id!)>
<#list poMapper.fieldMapperMap?values as fieldMapper>
	<${r"#"}case "${fieldMapper.code}">
T.${fieldMapper.columnName} AS ${fieldMapper.code}
	<${r"#"}break>
</#list>
	<${r"#"}default>
COUNT(1) AS COUNT_
</${r"#"}switch>
FROM ${poMapper.tableName} T
<${r"#"}include "where${poMapper.code}By1.ftl">