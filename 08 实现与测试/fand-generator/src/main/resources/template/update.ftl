UPDATE ${poMapper.tableName} T
<${r"#"}assign prefixName='SET'>
<#list poMapper.fieldMapperMap?values as fieldMapper>
<${r"#"}if (update__${fieldMapper.code}??)>
	<${r"#"}if (update__${fieldMapper.code}__value??)>
${r"${prefixName}"} T.${fieldMapper.columnName} = :update__${fieldMapper.code}__value
	<${r"#"}else>
${r"${prefixName}"} T.${fieldMapper.columnName} = NULL
	</${r"#"}if>
	<${r"#"}assign prefixName=','>
</${r"#"}if>
</#list>
<${r"#"}include "where${poMapper.code}By1.ftl">