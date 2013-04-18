INSERT
INTO
  FD_MESSAGE T
  (
<#assign prefixName=' '>
<#if (insert__id??) && (insert__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (insert__content??) && (insert__content__value??)>
  ${prefixName} CONTENT_
	<#assign prefixName=','>
</#if>
<#if (insert__localeId??) && (insert__localeId__value??)>
  ${prefixName} LOCALE_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__endTi??) && (insert__endTi__value??)>
  ${prefixName} END_TI_
	<#assign prefixName=','>
</#if>
<#if (insert__code??) && (insert__code__value??)>
  ${prefixName} CODE_
	<#assign prefixName=','>
</#if>
<#if (insert__beginTi??) && (insert__beginTi__value??)>
  ${prefixName} BEGIN_TI_
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
<#if (insert__content??) && (insert__content__value??)>
  ${prefixName} :insert__content__value
	<#assign prefixName=','>
</#if>
<#if (insert__localeId??) && (insert__localeId__value??)>
  ${prefixName} :insert__localeId__value
	<#assign prefixName=','>
</#if>
<#if (insert__endTi??) && (insert__endTi__value??)>
  ${prefixName} :insert__endTi__value
	<#assign prefixName=','>
</#if>
<#if (insert__code??) && (insert__code__value??)>
  ${prefixName} :insert__code__value
	<#assign prefixName=','>
</#if>
<#if (insert__beginTi??) && (insert__beginTi__value??)>
  ${prefixName} :insert__beginTi__value
	<#assign prefixName=','>
</#if>
  )