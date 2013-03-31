<#assign prefixName='WHERE'>
<#if (where__and__eq__id??)>
	<#if (where__and__eq__id__value??)>
${prefixName} ID_ = :where__and__eq__id__value
	<#else>
${prefixName} ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__byteVa??)>
	<#if (where__and__eq__byteVa__value??)>
${prefixName} BYTE_VA_ = :where__and__eq__byteVa__value
	<#else>
${prefixName} BYTE_VA_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
