INSERT
INTO
  PARTITION
  (
<#assign prefixName=' '>
<#if (create__id??) && (create__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (create__endTi??) && (create__endTi__value??)>
  ${prefixName} END_TI_
	<#assign prefixName=','>
</#if>
<#if (create__name??) && (create__name__value??)>
  ${prefixName} NAME_
	<#assign prefixName=','>
</#if>
<#if (create__orderNu??) && (create__orderNu__value??)>
  ${prefixName} ORDER_NU_
	<#assign prefixName=','>
</#if>
<#if (create__code??) && (create__code__value??)>
  ${prefixName} CODE_
	<#assign prefixName=','>
</#if>
<#if (create__beginTi??) && (create__beginTi__value??)>
  ${prefixName} BEGIN_TI_
	<#assign prefixName=','>
</#if>
<#if (create__versionNu??) && (create__versionNu__value??)>
  ${prefixName} VERSION_NU_
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
<#if (create__endTi??) && (create__endTi__value??)>
  ${prefixName} :create__endTi__value
	<#assign prefixName=','>
</#if>
<#if (create__name??) && (create__name__value??)>
  ${prefixName} :create__name__value
	<#assign prefixName=','>
</#if>
<#if (create__orderNu??) && (create__orderNu__value??)>
  ${prefixName} :create__orderNu__value
	<#assign prefixName=','>
</#if>
<#if (create__code??) && (create__code__value??)>
  ${prefixName} :create__code__value
	<#assign prefixName=','>
</#if>
<#if (create__beginTi??) && (create__beginTi__value??)>
  ${prefixName} :create__beginTi__value
	<#assign prefixName=','>
</#if>
<#if (create__versionNu??) && (create__versionNu__value??)>
  ${prefixName} :create__versionNu__value
	<#assign prefixName=','>
</#if>
  )