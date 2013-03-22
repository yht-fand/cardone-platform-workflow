SELECT
<#assign prefixName=' '>
<#if (find__doubleVa??)>
${prefixName} DOUBLE_VA_ doubleVa
	<#assign prefixName=','>
</#if>
<#if (find__endTi??)>
${prefixName} END_TI_ endTi
	<#assign prefixName=','>
</#if>
<#if (find__orderNu??)>
${prefixName} ORDER_NU_ orderNu
	<#assign prefixName=','>
</#if>
<#if (find__typeCode??)>
${prefixName} TYPE_CODE_ typeCode
	<#assign prefixName=','>
</#if>
<#if (find__code??)>
${prefixName} CODE_ code
	<#assign prefixName=','>
</#if>
<#if (find__stringVa??)>
${prefixName} STRING_VA_ stringVa
	<#assign prefixName=','>
</#if>
<#if (find__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (find__directoryCo??)>
${prefixName} DIRECTORY_CO_ directoryCo
	<#assign prefixName=','>
</#if>
<#if (find__dateVa??)>
${prefixName} DATE_VA_ dateVa
	<#assign prefixName=','>
</#if>
<#if (find__name??)>
${prefixName} NAME_ name
	<#assign prefixName=','>
</#if>
<#if (find__beginTi??)>
${prefixName} BEGIN_TI_ beginTi
	<#assign prefixName=','>
</#if>
<#if (find__longVa??)>
${prefixName} LONG_VA_ longVa
	<#assign prefixName=','>
</#if>
<#if (find__versionNu??)>
${prefixName} VERSION_NU_ versionNu
	<#assign prefixName=','>
</#if>
<#if (find__textVa??)>
${prefixName} TEXT_VA_ textVa
	<#assign prefixName=','>
</#if>
<#if (find__partitionCo??)>
${prefixName} PARTITION_CO_ partitionCo
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  DOUBLE_VA_ doubleVa
, END_TI_ endTi
, ORDER_NU_ orderNu
, TYPE_CODE_ typeCode
, CODE_ code
, STRING_VA_ stringVa
, ID_ id
, DIRECTORY_CO_ directoryCo
, DATE_VA_ dateVa
, NAME_ name
, BEGIN_TI_ beginTi
, LONG_VA_ longVa
, VERSION_NU_ versionNu
, TEXT_VA_ textVa
, PARTITION_CO_ partitionCo
</#if>
FROM DIRECTORY_FI
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (find__all??)>
WHERE 1 = 2
</#if>
<#assign prefixName='ORDER BY'>
<#if (order__by__doubleVa??)>
${prefixName} DOUBLE_VA_ ${order__by__doubleVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__endTi??)>
${prefixName} END_TI_ ${order__by__endTi_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__orderNu??)>
${prefixName} ORDER_NU_ ${order__by__orderNu_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__typeCode??)>
${prefixName} TYPE_CODE_ ${order__by__typeCode_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__code??)>
${prefixName} CODE_ ${order__by__code_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__stringVa??)>
${prefixName} STRING_VA_ ${order__by__stringVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__id??)>
${prefixName} ID_ ${order__by__id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__directoryCo??)>
${prefixName} DIRECTORY_CO_ ${order__by__directoryCo_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__dateVa??)>
${prefixName} DATE_VA_ ${order__by__dateVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__name??)>
${prefixName} NAME_ ${order__by__name_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__beginTi??)>
${prefixName} BEGIN_TI_ ${order__by__beginTi_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__longVa??)>
${prefixName} LONG_VA_ ${order__by__longVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__versionNu??)>
${prefixName} VERSION_NU_ ${order__by__versionNu_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__textVa??)>
${prefixName} TEXT_VA_ ${order__by__textVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__partitionCo??)>
${prefixName} PARTITION_CO_ ${order__by__partitionCo_value}
	<#assign prefixName=','>
</#if>
