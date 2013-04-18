<#assign prefixName='WHERE'>
<#if (where__and__eq__id??)>
	<#if (where__and__eq__id__value??)>
${prefixName} T.ID_ = :where__and__eq__id__value
	<#else>
${prefixName} T.ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__stringVa??)>
	<#if (where__and__eq__stringVa__value??)>
${prefixName} T.STRING_VA_ = :where__and__eq__stringVa__value
	<#else>
${prefixName} T.STRING_VA_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__doubleVa??)>
	<#if (where__and__eq__doubleVa__value??)>
${prefixName} T.DOUBLE_VA_ = :where__and__eq__doubleVa__value
	<#else>
${prefixName} T.DOUBLE_VA_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__objectTyId??)>
	<#if (where__and__eq__objectTyId__value??)>
${prefixName} T.OBJECT_TY_ID_ = :where__and__eq__objectTyId__value
	<#else>
${prefixName} T.OBJECT_TY_ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__dateVa??)>
	<#if (where__and__eq__dateVa__value??)>
${prefixName} T.DATE_VA_ = :where__and__eq__dateVa__value
	<#else>
${prefixName} T.DATE_VA_ IS NULL
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
<#if (where__and__eq__objectId??)>
	<#if (where__and__eq__objectId__value??)>
${prefixName} T.OBJECT_ID_ = :where__and__eq__objectId__value
	<#else>
${prefixName} T.OBJECT_ID_ IS NULL
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
<#if (where__and__eq__typeId??)>
	<#if (where__and__eq__typeId__value??)>
${prefixName} T.TYPE_ID_ = :where__and__eq__typeId__value
	<#else>
${prefixName} T.TYPE_ID_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
<#if (where__and__eq__longVa??)>
	<#if (where__and__eq__longVa__value??)>
${prefixName} T.LONG_VA_ = :where__and__eq__longVa__value
	<#else>
${prefixName} T.LONG_VA_ IS NULL
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
<#if (where__and__eq__textVa??)>
	<#if (where__and__eq__textVa__value??)>
${prefixName} T.TEXT_VA_ = :where__and__eq__textVa__value
	<#else>
${prefixName} T.TEXT_VA_ IS NULL
	</#if>
	<#assign prefixName='AND'>
</#if>
