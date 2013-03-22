INSERT
INTO
  DIRECTORY_FI
  (
<#assign prefixName=' '>
<#if (create__doubleVa??) && (create__doubleVa__value??)>
  ${prefixName} DOUBLE_VA_
	<#assign prefixName=','>
</#if>
<#if (create__endTi??) && (create__endTi__value??)>
  ${prefixName} END_TI_
	<#assign prefixName=','>
</#if>
<#if (create__orderNu??) && (create__orderNu__value??)>
  ${prefixName} ORDER_NU_
	<#assign prefixName=','>
</#if>
<#if (create__typeCode??) && (create__typeCode__value??)>
  ${prefixName} TYPE_CODE_
	<#assign prefixName=','>
</#if>
<#if (create__code??) && (create__code__value??)>
  ${prefixName} CODE_
	<#assign prefixName=','>
</#if>
<#if (create__stringVa??) && (create__stringVa__value??)>
  ${prefixName} STRING_VA_
	<#assign prefixName=','>
</#if>
<#if (create__id??) && (create__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (create__directoryCo??) && (create__directoryCo__value??)>
  ${prefixName} DIRECTORY_CO_
	<#assign prefixName=','>
</#if>
<#if (create__dateVa??) && (create__dateVa__value??)>
  ${prefixName} DATE_VA_
	<#assign prefixName=','>
</#if>
<#if (create__name??) && (create__name__value??)>
  ${prefixName} NAME_
	<#assign prefixName=','>
</#if>
<#if (create__beginTi??) && (create__beginTi__value??)>
  ${prefixName} BEGIN_TI_
	<#assign prefixName=','>
</#if>
<#if (create__longVa??) && (create__longVa__value??)>
  ${prefixName} LONG_VA_
	<#assign prefixName=','>
</#if>
<#if (create__versionNu??) && (create__versionNu__value??)>
  ${prefixName} VERSION_NU_
	<#assign prefixName=','>
</#if>
<#if (create__textVa??) && (create__textVa__value??)>
  ${prefixName} TEXT_VA_
	<#assign prefixName=','>
</#if>
<#if (create__partitionCo??) && (create__partitionCo__value??)>
  ${prefixName} PARTITION_CO_
	<#assign prefixName=','>
</#if>
  )
  VALUES
  (
<#assign prefixName=' '>
<#if (create__doubleVa??) && (create__doubleVa__value??)>
  ${prefixName} :create__doubleVa__value
	<#assign prefixName=','>
</#if>
<#if (create__endTi??) && (create__endTi__value??)>
  ${prefixName} :create__endTi__value
	<#assign prefixName=','>
</#if>
<#if (create__orderNu??) && (create__orderNu__value??)>
  ${prefixName} :create__orderNu__value
	<#assign prefixName=','>
</#if>
<#if (create__typeCode??) && (create__typeCode__value??)>
  ${prefixName} :create__typeCode__value
	<#assign prefixName=','>
</#if>
<#if (create__code??) && (create__code__value??)>
  ${prefixName} :create__code__value
	<#assign prefixName=','>
</#if>
<#if (create__stringVa??) && (create__stringVa__value??)>
  ${prefixName} :create__stringVa__value
	<#assign prefixName=','>
</#if>
<#if (create__id??) && (create__id__value??)>
  ${prefixName} :create__id__value
	<#assign prefixName=','>
</#if>
<#if (create__directoryCo??) && (create__directoryCo__value??)>
  ${prefixName} :create__directoryCo__value
	<#assign prefixName=','>
</#if>
<#if (create__dateVa??) && (create__dateVa__value??)>
  ${prefixName} :create__dateVa__value
	<#assign prefixName=','>
</#if>
<#if (create__name??) && (create__name__value??)>
  ${prefixName} :create__name__value
	<#assign prefixName=','>
</#if>
<#if (create__beginTi??) && (create__beginTi__value??)>
  ${prefixName} :create__beginTi__value
	<#assign prefixName=','>
</#if>
<#if (create__longVa??) && (create__longVa__value??)>
  ${prefixName} :create__longVa__value
	<#assign prefixName=','>
</#if>
<#if (create__versionNu??) && (create__versionNu__value??)>
  ${prefixName} :create__versionNu__value
	<#assign prefixName=','>
</#if>
<#if (create__textVa??) && (create__textVa__value??)>
  ${prefixName} :create__textVa__value
	<#assign prefixName=','>
</#if>
<#if (create__partitionCo??) && (create__partitionCo__value??)>
  ${prefixName} :create__partitionCo__value
	<#assign prefixName=','>
</#if>
  )