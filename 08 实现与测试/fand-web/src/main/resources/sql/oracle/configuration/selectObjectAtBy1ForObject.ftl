SELECT
<#switch (select__object__id!)>
	<#case "id">
T.ID_ AS id
	<#break>
	<#case "stringVa">
T.STRING_VA_ AS stringVa
	<#break>
	<#case "doubleVa">
T.DOUBLE_VA_ AS doubleVa
	<#break>
	<#case "objectTyId">
T.OBJECT_TY_ID_ AS objectTyId
	<#break>
	<#case "dateVa">
T.DATE_VA_ AS dateVa
	<#break>
	<#case "endTi">
T.END_TI_ AS endTi
	<#break>
	<#case "objectId">
T.OBJECT_ID_ AS objectId
	<#break>
	<#case "code">
T.CODE_ AS code
	<#break>
	<#case "typeId">
T.TYPE_ID_ AS typeId
	<#break>
	<#case "longVa">
T.LONG_VA_ AS longVa
	<#break>
	<#case "beginTi">
T.BEGIN_TI_ AS beginTi
	<#break>
	<#case "textVa">
T.TEXT_VA_ AS textVa
	<#break>
	<#default>
COUNT(1) AS COUNT_
</#switch>
FROM FD_OBJECT_AT T
<#include "whereObjectAtBy1.ftl">