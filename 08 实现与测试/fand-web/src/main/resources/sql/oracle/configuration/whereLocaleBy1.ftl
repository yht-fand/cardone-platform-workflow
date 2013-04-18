<#assign prefixName='WHERE'>
<#if (where__and__eq__id??)>
	<#if (where__and__eq__id__value??)>
${prefixName} T.ID_ = :where__and__eq__id__value
	<#else>
${prefixName} T.ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__order??)>
	<#if (where__and__eq__order__value??)>
${prefixName} T.ORDER_ = :where__and__eq__order__value
	<#else>
${prefixName} T.ORDER_ IS NULL
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
