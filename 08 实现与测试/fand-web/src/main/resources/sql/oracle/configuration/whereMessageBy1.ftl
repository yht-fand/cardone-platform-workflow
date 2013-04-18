<#assign prefixName='WHERE'>
<#if (where__and__eq__id??)>
	<#if (where__and__eq__id__value??)>
${prefixName} T.ID_ = :where__and__eq__id__value
	<#else>
${prefixName} T.ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__content??)>
	<#if (where__and__eq__content__value??)>
${prefixName} T.CONTENT_ = :where__and__eq__content__value
	<#else>
${prefixName} T.CONTENT_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__localeId??)>
	<#if (where__and__eq__localeId__value??)>
${prefixName} T.LOCALE_ID_ = :where__and__eq__localeId__value
	<#else>
${prefixName} T.LOCALE_ID_ IS NULL
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
<#if (where__and__eq__code??)>
	<#if (where__and__eq__code__value??)>
${prefixName} T.CODE_ = :where__and__eq__code__value
	<#else>
${prefixName} T.CODE_ IS NULL
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
