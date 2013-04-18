INSERT
INTO
  FD_OBJECT_AT T
  (
<#assign prefixName=' '>
<#if (insert__id??) && (insert__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (insert__stringVa??) && (insert__stringVa__value??)>
  ${prefixName} STRING_VA_
	<#assign prefixName=','>
</#if>
<#if (insert__doubleVa??) && (insert__doubleVa__value??)>
  ${prefixName} DOUBLE_VA_
	<#assign prefixName=','>
</#if>
<#if (insert__objectTyId??) && (insert__objectTyId__value??)>
  ${prefixName} OBJECT_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__dateVa??) && (insert__dateVa__value??)>
  ${prefixName} DATE_VA_
	<#assign prefixName=','>
</#if>
<#if (insert__endTi??) && (insert__endTi__value??)>
  ${prefixName} END_TI_
	<#assign prefixName=','>
</#if>
<#if (insert__objectId??) && (insert__objectId__value??)>
  ${prefixName} OBJECT_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__code??) && (insert__code__value??)>
  ${prefixName} CODE_
	<#assign prefixName=','>
</#if>
<#if (insert__typeId??) && (insert__typeId__value??)>
  ${prefixName} TYPE_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__longVa??) && (insert__longVa__value??)>
  ${prefixName} LONG_VA_
	<#assign prefixName=','>
</#if>
<#if (insert__beginTi??) && (insert__beginTi__value??)>
  ${prefixName} BEGIN_TI_
	<#assign prefixName=','>
</#if>
<#if (insert__textVa??) && (insert__textVa__value??)>
  ${prefixName} TEXT_VA_
	<#assign prefixName=','>
</#if>
  )
  VALUES
  (
<#assign prefixName=' '>
<#if (insert__id??) && (insert__id__value??)>
  ${prefixName} :insert__id__value
	<#assign prefixName=','>
</#if>
<#if (insert__stringVa??) && (insert__stringVa__value??)>
  ${prefixName} :insert__stringVa__value
	<#assign prefixName=','>
</#if>
<#if (insert__doubleVa??) && (insert__doubleVa__value??)>
  ${prefixName} :insert__doubleVa__value
	<#assign prefixName=','>
</#if>
<#if (insert__objectTyId??) && (insert__objectTyId__value??)>
  ${prefixName} :insert__objectTyId__value
	<#assign prefixName=','>
</#if>
<#if (insert__dateVa??) && (insert__dateVa__value??)>
  ${prefixName} :insert__dateVa__value
	<#assign prefixName=','>
</#if>
<#if (insert__endTi??) && (insert__endTi__value??)>
  ${prefixName} :insert__endTi__value
	<#assign prefixName=','>
</#if>
<#if (insert__objectId??) && (insert__objectId__value??)>
  ${prefixName} :insert__objectId__value
	<#assign prefixName=','>
</#if>
<#if (insert__code??) && (insert__code__value??)>
  ${prefixName} :insert__code__value
	<#assign prefixName=','>
</#if>
<#if (insert__typeId??) && (insert__typeId__value??)>
  ${prefixName} :insert__typeId__value
	<#assign prefixName=','>
</#if>
<#if (insert__longVa??) && (insert__longVa__value??)>
  ${prefixName} :insert__longVa__value
	<#assign prefixName=','>
</#if>
<#if (insert__beginTi??) && (insert__beginTi__value??)>
  ${prefixName} :insert__beginTi__value
	<#assign prefixName=','>
</#if>
<#if (insert__textVa??) && (insert__textVa__value??)>
  ${prefixName} :insert__textVa__value
	<#assign prefixName=','>
</#if>
  )