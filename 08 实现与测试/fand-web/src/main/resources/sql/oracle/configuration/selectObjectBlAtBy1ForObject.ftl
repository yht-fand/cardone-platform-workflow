SELECT
<#switch (select__object__id!)>
	<#case "id">
T.ID_ AS id
	<#break>
	<#case "endTi">
T.END_TI_ AS endTi
	<#break>
	<#case "byteVa">
T.BYTE_VA_ AS byteVa
	<#break>
	<#case "beginTi">
T.BEGIN_TI_ AS beginTi
	<#break>
	<#default>
COUNT(1) AS COUNT_
</#switch>
FROM FD_OBJECT_BL_AT T
<#include "whereObjectBlAtBy1.ftl">