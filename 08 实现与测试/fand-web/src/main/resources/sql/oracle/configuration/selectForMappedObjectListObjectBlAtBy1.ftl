SELECT
<#assign prefixName=' '>
<#if (select__id??)>
${prefixName} T.ID_ AS id
	<#assign prefixName=','>
</#if>
<#if (select__endTi??)>
${prefixName} T.END_TI_ AS endTi
	<#assign prefixName=','>
</#if>
<#if (select__byteVa??)>
${prefixName} T.BYTE_VA_ AS byteVa
	<#assign prefixName=','>
</#if>
<#if (select__beginTi??)>
${prefixName} T.BEGIN_TI_ AS beginTi
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  T.ID_ AS id
, T.END_TI_ AS endTi
, T.BYTE_VA_ AS byteVa
, T.BEGIN_TI_ AS beginTi
</#if>
FROM FD_OBJECT_BL_AT T
<#include "whereObjectBlAtBy1.ftl">
<#assign prefixName='ORDER BY'>
<#if (order__by__id??)>
${prefixName} T.ID_ ${order__by__id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__endTi??)>
${prefixName} T.END_TI_ ${order__by__endTi_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__byteVa??)>
${prefixName} T.BYTE_VA_ ${order__by__byteVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__beginTi??)>
${prefixName} T.BEGIN_TI_ ${order__by__beginTi_value}
	<#assign prefixName=','>
</#if>
