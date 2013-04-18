INSERT
INTO
  FD_OBJECT_CL_AT T
  (
<#assign prefixName=' '>
<#if (insert__id??) && (insert__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (insert__clobVa??) && (insert__clobVa__value??)>
  ${prefixName} CLOB_VA_
	<#assign prefixName=','>
</#if>
<#if (insert__endTi??) && (insert__endTi__value??)>
  ${prefixName} END_TI_
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
<#if (insert__clobVa??) && (insert__clobVa__value??)>
  ${prefixName} :insert__clobVa__value
	<#assign prefixName=','>
</#if>
<#if (insert__endTi??) && (insert__endTi__value??)>
  ${prefixName} :insert__endTi__value
	<#assign prefixName=','>
</#if>
<#if (insert__beginTi??) && (insert__beginTi__value??)>
  ${prefixName} :insert__beginTi__value
	<#assign prefixName=','>
</#if>
  )