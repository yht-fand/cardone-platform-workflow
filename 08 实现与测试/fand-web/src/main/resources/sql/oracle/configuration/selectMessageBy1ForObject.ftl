SELECT
<#switch (select__object__id!)>
	<#case "id">
T.ID_ AS id
	<#break>
	<#case "content">
T.CONTENT_ AS content
	<#break>
	<#case "localeId">
T.LOCALE_ID_ AS localeId
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
FROM FD_MESSAGE T
<#include "whereMessageBy1.ftl">