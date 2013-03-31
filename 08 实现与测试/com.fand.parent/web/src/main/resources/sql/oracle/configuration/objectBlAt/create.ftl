INSERT
INTO
  FD_OBJECT_BL_AT
  (
<#assign prefixName=' '>
<#if (create__id??) && (create__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (create__byteVa??) && (create__byteVa__value??)>
  ${prefixName} BYTE_VA_
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
<#if (create__byteVa??) && (create__byteVa__value??)>
  ${prefixName} :create__byteVa__value
	<#assign prefixName=','>
</#if>
  )