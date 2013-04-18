SELECT
<#switch (select__object__id!)>
	<#case "id">
T.ID_ AS id
	<#break>
	<#case "clobVa">
T.CLOB_VA_ AS clobVa
	<#break>
	<#case "endTi">
T.END_TI_ AS endTi
	<#break>
	<#case "beginTi">
T.BEGIN_TI_ AS beginTi
	<#break>
	<#default>
COUNT(1) AS COUNT_
</#switch>
FROM FD_OBJECT_CL_AT T
<#include "whereObjectClAtBy1.ftl">