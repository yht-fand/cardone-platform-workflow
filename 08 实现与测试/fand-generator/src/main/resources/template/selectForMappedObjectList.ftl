SELECT
<${r"#"}assign prefixName=' '>
<#list poMapper.fieldMapperMap?values as fieldMapper>
<${r"#"}if (select__${fieldMapper.code}??)>
${r"$"}{prefixName} T.${fieldMapper.columnName} AS ${fieldMapper.code}
	<${r"#"}assign prefixName=','>
</${r"#"}if>
</#list>
<${r"#"}if prefixName == ' '>
<#assign prefixName=' '>
<#list poMapper.fieldMapperMap?values as fieldMapper>
${prefixName} T.${fieldMapper.columnName} AS ${fieldMapper.code}
	<#assign prefixName=','>
</#list>
</${r"#"}if>
FROM ${poMapper.tableName} T
<${r"#"}include "where${poMapper.code}By1.ftl">
<${r"#"}assign prefixName='ORDER BY'>
<#list poMapper.fieldMapperMap?values as fieldMapper>
<${r"#"}if (order__by__${fieldMapper.code}??)>
${r"$"}{prefixName} T.${fieldMapper.columnName} ${r"$"}{order__by__${fieldMapper.code}_value}
	<${r"#"}assign prefixName=','>
</${r"#"}if>
</#list>