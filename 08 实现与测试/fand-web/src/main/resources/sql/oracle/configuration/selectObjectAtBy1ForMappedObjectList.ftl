SELECT
<#assign prefixName=' '>
<#if (select__id??)>
${prefixName} T.ID_ AS id
	<#assign prefixName=','>
</#if>
<#if (select__stringVa??)>
${prefixName} T.STRING_VA_ AS stringVa
	<#assign prefixName=','>
</#if>
<#if (select__doubleVa??)>
${prefixName} T.DOUBLE_VA_ AS doubleVa
	<#assign prefixName=','>
</#if>
<#if (select__objectTyId??)>
${prefixName} T.OBJECT_TY_ID_ AS objectTyId
	<#assign prefixName=','>
</#if>
<#if (select__dateVa??)>
${prefixName} T.DATE_VA_ AS dateVa
	<#assign prefixName=','>
</#if>
<#if (select__endTi??)>
${prefixName} T.END_TI_ AS endTi
	<#assign prefixName=','>
</#if>
<#if (select__objectId??)>
${prefixName} T.OBJECT_ID_ AS objectId
	<#assign prefixName=','>
</#if>
<#if (select__code??)>
${prefixName} T.CODE_ AS code
	<#assign prefixName=','>
</#if>
<#if (select__typeId??)>
${prefixName} T.TYPE_ID_ AS typeId
	<#assign prefixName=','>
</#if>
<#if (select__longVa??)>
${prefixName} T.LONG_VA_ AS longVa
	<#assign prefixName=','>
</#if>
<#if (select__beginTi??)>
${prefixName} T.BEGIN_TI_ AS beginTi
	<#assign prefixName=','>
</#if>
<#if (select__textVa??)>
${prefixName} T.TEXT_VA_ AS textVa
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  T.ID_ AS id
, T.STRING_VA_ AS stringVa
, T.DOUBLE_VA_ AS doubleVa
, T.OBJECT_TY_ID_ AS objectTyId
, T.DATE_VA_ AS dateVa
, T.END_TI_ AS endTi
, T.OBJECT_ID_ AS objectId
, T.CODE_ AS code
, T.TYPE_ID_ AS typeId
, T.LONG_VA_ AS longVa
, T.BEGIN_TI_ AS beginTi
, T.TEXT_VA_ AS textVa
</#if>
FROM FD_OBJECT_AT T
<#include "whereObjectAtBy1.ftl">
<#assign prefixName='ORDER BY'>
<#if (order__by__id??)>
${prefixName} T.ID_ ${order__by__id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__stringVa??)>
${prefixName} T.STRING_VA_ ${order__by__stringVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__doubleVa??)>
${prefixName} T.DOUBLE_VA_ ${order__by__doubleVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__objectTyId??)>
${prefixName} T.OBJECT_TY_ID_ ${order__by__objectTyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__dateVa??)>
${prefixName} T.DATE_VA_ ${order__by__dateVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__endTi??)>
${prefixName} T.END_TI_ ${order__by__endTi_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__objectId??)>
${prefixName} T.OBJECT_ID_ ${order__by__objectId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__code??)>
${prefixName} T.CODE_ ${order__by__code_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__typeId??)>
${prefixName} T.TYPE_ID_ ${order__by__typeId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__longVa??)>
${prefixName} T.LONG_VA_ ${order__by__longVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__beginTi??)>
${prefixName} T.BEGIN_TI_ ${order__by__beginTi_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__textVa??)>
${prefixName} T.TEXT_VA_ ${order__by__textVa_value}
	<#assign prefixName=','>
</#if>
