SELECT
<#switch (read__field__id!)>
	<#case "id">
ID_ id
	<#break>
	<#case "content">
CONTENT_ content
	<#break>
	<#case "localeId">
LOCALE_ID_ localeId
	<#break>
	<#case "code">
CODE_ code
	<#break>
	<#default>
COUNT(*) count
</#switch>
FROM FD_MESSAGE
<#include "where_.ftl">