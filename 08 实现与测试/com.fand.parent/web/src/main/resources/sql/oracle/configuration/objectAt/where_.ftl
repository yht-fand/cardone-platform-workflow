<#assign prefixName='WHERE'>
<#if (where__and__eq__id??)>
	<#if (where__and__eq__id__value??)>
${prefixName} ID_ = :where__and__eq__id__value
	<#else>
${prefixName} ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__stringVa??)>
	<#if (where__and__eq__stringVa__value??)>
${prefixName} STRING_VA_ = :where__and__eq__stringVa__value
	<#else>
${prefixName} STRING_VA_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__doubleVa??)>
	<#if (where__and__eq__doubleVa__value??)>
${prefixName} DOUBLE_VA_ = :where__and__eq__doubleVa__value
	<#else>
${prefixName} DOUBLE_VA_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__objectTyId??)>
	<#if (where__and__eq__objectTyId__value??)>
${prefixName} OBJECT_TY_ID_ = :where__and__eq__objectTyId__value
	<#else>
${prefixName} OBJECT_TY_ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__dateVa??)>
	<#if (where__and__eq__dateVa__value??)>
${prefixName} DATE_VA_ = :where__and__eq__dateVa__value
	<#else>
${prefixName} DATE_VA_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__objectId??)>
	<#if (where__and__eq__objectId__value??)>
${prefixName} OBJECT_ID_ = :where__and__eq__objectId__value
	<#else>
${prefixName} OBJECT_ID_ IS NULL
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
<#if (where__and__eq__typeId??)>
	<#if (where__and__eq__typeId__value??)>
${prefixName} TYPE_ID_ = :where__and__eq__typeId__value
	<#else>
${prefixName} TYPE_ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__longVa??)>
	<#if (where__and__eq__longVa__value??)>
${prefixName} LONG_VA_ = :where__and__eq__longVa__value
	<#else>
${prefixName} LONG_VA_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__textVa??)>
	<#if (where__and__eq__textVa__value??)>
${prefixName} TEXT_VA_ = :where__and__eq__textVa__value
	<#else>
${prefixName} TEXT_VA_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
