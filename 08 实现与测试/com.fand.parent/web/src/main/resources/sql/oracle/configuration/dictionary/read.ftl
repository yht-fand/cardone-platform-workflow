SELECT
<#switch (read__field__id!)>
	<#case "id">
ID_ id
	<#break>
	<#case "dictionaryTyId">
DICTIONARY_TY_ID_ dictionaryTyId
	<#break>
	<#case "name">
NAME_ name
	<#break>
	<#case "orderNu">
ORDER_NU_ orderNu
	<#break>
	<#case "code">
CODE_ code
	<#break>
	<#default>
COUNT(*) count
</#switch>
FROM FD_DICTIONARY
<#include "where_.ftl">