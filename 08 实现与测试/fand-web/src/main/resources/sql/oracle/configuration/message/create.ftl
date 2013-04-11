INSERT
INTO
  FD_MESSAGE
  (
<#assign prefixName=' '>
<#if (create__id??) && (create__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (create__content??) && (create__content__value??)>
  ${prefixName} CONTENT_
	<#assign prefixName=','>
</#if>
<#if (create__localeId??) && (create__localeId__value??)>
  ${prefixName} LOCALE_ID_
	<#assign prefixName=','>
</#if>
<#if (create__code??) && (create__code__value??)>
  ${prefixName} CODE_
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
<#if (create__content??) && (create__content__value??)>
  ${prefixName} :create__content__value
	<#assign prefixName=','>
</#if>
<#if (create__localeId??) && (create__localeId__value??)>
  ${prefixName} :create__localeId__value
	<#assign prefixName=','>
</#if>
<#if (create__code??) && (create__code__value??)>
  ${prefixName} :create__code__value
	<#assign prefixName=','>
</#if>
  )