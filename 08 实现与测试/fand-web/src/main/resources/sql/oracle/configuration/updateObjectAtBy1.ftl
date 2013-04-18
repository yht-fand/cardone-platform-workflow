UPDATE FD_OBJECT_AT T
<#assign prefixName='SET'>
<#if (update__id??)>
	<#if (update__id__value??)>
${prefixName} T.ID_ = :update__id__value
	<#else>
${prefixName} T.ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__stringVa??)>
	<#if (update__stringVa__value??)>
${prefixName} T.STRING_VA_ = :update__stringVa__value
	<#else>
${prefixName} T.STRING_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__doubleVa??)>
	<#if (update__doubleVa__value??)>
${prefixName} T.DOUBLE_VA_ = :update__doubleVa__value
	<#else>
${prefixName} T.DOUBLE_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__objectTyId??)>
	<#if (update__objectTyId__value??)>
${prefixName} T.OBJECT_TY_ID_ = :update__objectTyId__value
	<#else>
${prefixName} T.OBJECT_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__dateVa??)>
	<#if (update__dateVa__value??)>
${prefixName} T.DATE_VA_ = :update__dateVa__value
	<#else>
${prefixName} T.DATE_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__endTi??)>
	<#if (update__endTi__value??)>
${prefixName} T.END_TI_ = :update__endTi__value
	<#else>
${prefixName} T.END_TI_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__objectId??)>
	<#if (update__objectId__value??)>
${prefixName} T.OBJECT_ID_ = :update__objectId__value
	<#else>
${prefixName} T.OBJECT_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__code??)>
	<#if (update__code__value??)>
${prefixName} T.CODE_ = :update__code__value
	<#else>
${prefixName} T.CODE_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__typeId??)>
	<#if (update__typeId__value??)>
${prefixName} T.TYPE_ID_ = :update__typeId__value
	<#else>
${prefixName} T.TYPE_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__longVa??)>
	<#if (update__longVa__value??)>
${prefixName} T.LONG_VA_ = :update__longVa__value
	<#else>
${prefixName} T.LONG_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__beginTi??)>
	<#if (update__beginTi__value??)>
${prefixName} T.BEGIN_TI_ = :update__beginTi__value
	<#else>
${prefixName} T.BEGIN_TI_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__textVa??)>
	<#if (update__textVa__value??)>
${prefixName} T.TEXT_VA_ = :update__textVa__value
	<#else>
${prefixName} T.TEXT_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#include "whereObjectAtBy1.ftl">