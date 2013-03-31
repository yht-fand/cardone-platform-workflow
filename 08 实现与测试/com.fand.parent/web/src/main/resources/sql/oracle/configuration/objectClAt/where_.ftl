<#assign prefixName='WHERE'>
<#if (where__and__eq__id??)>
	<#if (where__and__eq__id__value??)>
${prefixName} ID_ = :where__and__eq__id__value
	<#else>
${prefixName} ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__clobVa??)>
	<#if (where__and__eq__clobVa__value??)>
${prefixName} CLOB_VA_ = :where__and__eq__clobVa__value
	<#else>
${prefixName} CLOB_VA_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
