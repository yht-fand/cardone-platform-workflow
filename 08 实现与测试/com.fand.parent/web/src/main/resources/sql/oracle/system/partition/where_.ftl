<#assign prefixName='WHERE'>
<#if (where__and__eq__id??)>
	<#if (where__and__eq__id__value??)>
${prefixName} ID_ = :where__and__eq__id__value
	<#else>
${prefixName} ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__endTi??)>
	<#if (where__and__eq__endTi__value??)>
${prefixName} END_TI_ = :where__and__eq__endTi__value
	<#else>
${prefixName} END_TI_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__name??)>
	<#if (where__and__eq__name__value??)>
${prefixName} NAME_ = :where__and__eq__name__value
	<#else>
${prefixName} NAME_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__orderNu??)>
	<#if (where__and__eq__orderNu__value??)>
${prefixName} ORDER_NU_ = :where__and__eq__orderNu__value
	<#else>
${prefixName} ORDER_NU_ IS NULL
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
<#if (where__and__eq__beginTi??)>
	<#if (where__and__eq__beginTi__value??)>
${prefixName} BEGIN_TI_ = :where__and__eq__beginTi__value
	<#else>
${prefixName} BEGIN_TI_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__versionNu??)>
	<#if (where__and__eq__versionNu__value??)>
${prefixName} VERSION_NU_ = :where__and__eq__versionNu__value
	<#else>
${prefixName} VERSION_NU_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
