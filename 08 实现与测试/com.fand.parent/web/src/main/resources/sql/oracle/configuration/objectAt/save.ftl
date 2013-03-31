UPDATE FD_OBJECT_AT
<#assign prefixName='SET'>
<#if (save__id??)>
	<#if (save__id__value??)>
${prefixName} ID_ = :save__id__value
	<#else>
${prefixName} ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__stringVa??)>
	<#if (save__stringVa__value??)>
${prefixName} STRING_VA_ = :save__stringVa__value
	<#else>
${prefixName} STRING_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__doubleVa??)>
	<#if (save__doubleVa__value??)>
${prefixName} DOUBLE_VA_ = :save__doubleVa__value
	<#else>
${prefixName} DOUBLE_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__objectTyId??)>
	<#if (save__objectTyId__value??)>
${prefixName} OBJECT_TY_ID_ = :save__objectTyId__value
	<#else>
${prefixName} OBJECT_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__dateVa??)>
	<#if (save__dateVa__value??)>
${prefixName} DATE_VA_ = :save__dateVa__value
	<#else>
${prefixName} DATE_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__objectId??)>
	<#if (save__objectId__value??)>
${prefixName} OBJECT_ID_ = :save__objectId__value
	<#else>
${prefixName} OBJECT_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__code??)>
	<#if (save__code__value??)>
${prefixName} CODE_ = :save__code__value
	<#else>
${prefixName} CODE_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__typeId??)>
	<#if (save__typeId__value??)>
${prefixName} TYPE_ID_ = :save__typeId__value
	<#else>
${prefixName} TYPE_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__longVa??)>
	<#if (save__longVa__value??)>
${prefixName} LONG_VA_ = :save__longVa__value
	<#else>
${prefixName} LONG_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__textVa??)>
	<#if (save__textVa__value??)>
${prefixName} TEXT_VA_ = :save__textVa__value
	<#else>
${prefixName} TEXT_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (save__all??)>
WHERE 1 = 2
</#if>