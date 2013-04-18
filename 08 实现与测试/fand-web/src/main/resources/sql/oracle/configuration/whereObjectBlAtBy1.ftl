<#assign prefixName='WHERE'>
<#if (where__and__eq__id??)>
	<#if (where__and__eq__id__value??)>
${prefixName} T.ID_ = :where__and__eq__id__value
	<#else>
${prefixName} T.ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__endTi??)>
	<#if (where__and__eq__endTi__value??)>
${prefixName} T.END_TI_ = :where__and__eq__endTi__value
	<#else>
${prefixName} T.END_TI_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__byteVa??)>
	<#if (where__and__eq__byteVa__value??)>
${prefixName} T.BYTE_VA_ = :where__and__eq__byteVa__value
	<#else>
${prefixName} T.BYTE_VA_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__beginTi??)>
	<#if (where__and__eq__beginTi__value??)>
${prefixName} T.BEGIN_TI_ = :where__and__eq__beginTi__value
	<#else>
${prefixName} T.BEGIN_TI_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
