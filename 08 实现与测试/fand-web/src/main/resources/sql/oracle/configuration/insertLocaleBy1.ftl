INSERT
INTO
  FD_LOCALE T
  (
<#assign prefixName=' '>
<#if (insert__id??) && (insert__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (insert__order??) && (insert__order__value??)>
  ${prefixName} ORDER_
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
<#if (insert__order??) && (insert__order__value??)>
  ${prefixName} :insert__order__value
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