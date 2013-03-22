SELECT
<#assign prefixName=' '>
<#if (get__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (get__endTi??)>
${prefixName} END_TI_ endTi
	<#assign prefixName=','>
</#if>
<#if (get__name??)>
${prefixName} NAME_ name
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
<#if (get__parentCo??)>
${prefixName} PARENT_CO_ parentCo
	<#assign prefixName=','>
</#if>
<#if (get__beginTi??)>
${prefixName} BEGIN_TI_ beginTi
	<#assign prefixName=','>
</#if>
<#if (get__versionNu??)>
${prefixName} VERSION_NU_ versionNu
	<#assign prefixName=','>
</#if>
<#if (get__partitionCo??)>
${prefixName} PARTITION_CO_ partitionCo
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  ID_ id
, END_TI_ endTi
, NAME_ name
, ORDER_NU_ orderNu
, TYPE_CODE_ typeCode
, CODE_ code
, PARENT_CO_ parentCo
, BEGIN_TI_ beginTi
, VERSION_NU_ versionNu
, PARTITION_CO_ partitionCo
</#if>
FROM DIRECTORY
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (get__all??)>
WHERE 1 = 2
</#if>