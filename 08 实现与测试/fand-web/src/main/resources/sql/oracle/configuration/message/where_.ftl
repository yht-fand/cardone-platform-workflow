<#assign prefixName='WHERE'>
<#if (where__and__eq__id??)>
	<#if (where__and__eq__id__value??)>
${prefixName} ID_ = :where__and__eq__id__value
	<#else>
${prefixName} ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__content??)>
	<#if (where__and__eq__content__value??)>
${prefixName} CONTENT_ = :where__and__eq__content__value
	<#else>
${prefixName} CONTENT_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__localeId??)>
	<#if (where__and__eq__localeId__value??)>
${prefixName} LOCALE_ID_ = :where__and__eq__localeId__value
	<#else>
${prefixName} LOCALE_ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__code??)>
	<#if (where__and__eq__code__value??)>
${prefixName} CODE_ = :where__and__eq__code__value
	<#else>
${prefixName} CODE_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
