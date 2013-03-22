SELECT
<#assign prefixName=' '>
<#if (get__doubleVa??)>
${prefixName} DOUBLE_VA_ doubleVa
	<#assign prefixName=','>
</#if>
<#if (get__endTi??)>
${prefixName} END_TI_ endTi
	<#assign prefixName=','>
</#if>
<#if (get__orderNu??)>
${prefixName} ORDER_NU_ orderNu
	<#assign prefixName=','>
</#if>
<#if (get__typeCode??)>
${prefixName} TYPE_CODE_ typeCode
	<#assign prefixName=','>
</#if>
<#if (get__code??)>
${prefixName} CODE_ code
	<#assign prefixName=','>
</#if>
<#if (get__stringVa??)>
${prefixName} STRING_VA_ stringVa
	<#assign prefixName=','>
</#if>
<#if (get__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (get__dateVa??)>
${prefixName} DATE_VA_ dateVa
	<#assign prefixName=','>
</#if>
<#if (get__name??)>
${prefixName} NAME_ name
	<#assign prefixName=','>
</#if>
<#if (get__beginTi??)>
${prefixName} BEGIN_TI_ beginTi
	<#assign prefixName=','>
</#if>
<#if (get__longVa??)>
${prefixName} LONG_VA_ longVa
	<#assign prefixName=','>
</#if>
<#if (get__versionNu??)>
${prefixName} VERSION_NU_ versionNu
	<#assign prefixName=','>
</#if>
<#if (get__textVa??)>
${prefixName} TEXT_VA_ textVa
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
, DATE_VA_ dateVa
, NAME_ name
, BEGIN_TI_ beginTi
, LONG_VA_ longVa
, VERSION_NU_ versionNu
, TEXT_VA_ textVa
</#if>
FROM PARTITION_FI
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (get__all??)>
WHERE 1 = 2
</#if>