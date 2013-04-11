INSERT
INTO
  FD_OBJECT_CL_AT
  (
<#assign prefixName=' '>
<#if (create__id??) && (create__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (create__clobVa??) && (create__clobVa__value??)>
  ${prefixName} CLOB_VA_
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
<#if (create__clobVa??) && (create__clobVa__value??)>
  ${prefixName} :create__clobVa__value
	<#assign prefixName=','>
</#if>
  )