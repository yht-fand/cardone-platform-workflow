INSERT
INTO
  ${poMapper.tableName} T
  (
<${r"#"}assign prefixName=' '>
<#list poMapper.fieldMapperMap?values as fieldMapper>
<${r"#"}if (insert__${fieldMapper.code}??) && (insert__${fieldMapper.code}__value??)>
  ${r"$"}{prefixName} ${fieldMapper.columnName}
	<${r"#"}assign prefixName=','>
</${r"#"}if>
</#list>
  )
  VALUES
  (
<${r"#"}assign prefixName=' '>
<#list poMapper.fieldMapperMap?values as fieldMapper>
<${r"#"}if (insert__${fieldMapper.code}??) && (insert__${fieldMapper.code}__value??)>
  ${r"$"}{prefixName} :insert__${fieldMapper.code}__value
	<${r"#"}assign prefixName=','>
</${r"#"}if>
</#list>
  )