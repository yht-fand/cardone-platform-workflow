INSERT
INTO
  FD_OBJECT_AT
  (
<#assign prefixName=' '>
<#if (create__id??) && (create__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (create__stringVa??) && (create__stringVa__value??)>
  ${prefixName} STRING_VA_
	<#assign prefixName=','>
</#if>
<#if (create__doubleVa??) && (create__doubleVa__value??)>
  ${prefixName} DOUBLE_VA_
	<#assign prefixName=','>
</#if>
<#if (create__objectTyId??) && (create__objectTyId__value??)>
  ${prefixName} OBJECT_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (create__dateVa??) && (create__dateVa__value??)>
  ${prefixName} DATE_VA_
	<#assign prefixName=','>
</#if>
<#if (create__objectId??) && (create__objectId__value??)>
  ${prefixName} OBJECT_ID_
	<#assign prefixName=','>
</#if>
<#if (create__code??) && (create__code__value??)>
  ${prefixName} CODE_
	<#assign prefixName=','>
</#if>
<#if (create__typeId??) && (create__typeId__value??)>
  ${prefixName} TYPE_ID_
	<#assign prefixName=','>
</#if>
<#if (create__longVa??) && (create__longVa__value??)>
  ${prefixName} LONG_VA_
	<#assign prefixName=','>
</#if>
<#if (create__textVa??) && (create__textVa__value??)>
  ${prefixName} TEXT_VA_
	<#assign prefixName=','>
</#if>
  )
  VALUES
  (
<#assign prefixName=' '>
<#if (create__id??) && (create__id__value??)>
  ${prefixName} :create__id__value
	<#assign prefixName=','>
</#if>
<#if (create__stringVa??) && (create__stringVa__value??)>
  ${prefixName} :create__stringVa__value
	<#assign prefixName=','>
</#if>
<#if (create__doubleVa??) && (create__doubleVa__value??)>
  ${prefixName} :create__doubleVa__value
	<#assign prefixName=','>
</#if>
<#if (create__objectTyId??) && (create__objectTyId__value??)>
  ${prefixName} :create__objectTyId__value
	<#assign prefixName=','>
</#if>
<#if (create__dateVa??) && (create__dateVa__value??)>
  ${prefixName} :create__dateVa__value
	<#assign prefixName=','>
</#if>
<#if (create__objectId??) && (create__objectId__value??)>
  ${prefixName} :create__objectId__value
	<#assign prefixName=','>
</#if>
<#if (create__code??) && (create__code__value??)>
  ${prefixName} :create__code__value
	<#assign prefixName=','>
</#if>
<#if (create__typeId??) && (create__typeId__value??)>
  ${prefixName} :create__typeId__value
	<#assign prefixName=','>
</#if>
<#if (create__longVa??) && (create__longVa__value??)>
  ${prefixName} :create__longVa__value
	<#assign prefixName=','>
</#if>
<#if (create__textVa??) && (create__textVa__value??)>
  ${prefixName} :create__textVa__value
	<#assign prefixName=','>
</#if>
  )