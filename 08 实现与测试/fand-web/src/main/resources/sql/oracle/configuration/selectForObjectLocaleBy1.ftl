SELECT
<#switch (select__object__id!)>
	<#case "id">
T.ID_ AS id
	<#break>
	<#case "order">
T.ORDER_ AS order
	<#break>
	<#case "endTi">
T.END_TI_ AS endTi
	<#break>
	<#case "code">
T.CODE_ AS code
	<#break>
	<#case "beginTi">
T.BEGIN_TI_ AS beginTi
	<#break>
	<#default>
COUNT(1) AS COUNT_
</#switch>
FROM FD_LOCALE T
<#include "whereLocaleBy1.ftl">