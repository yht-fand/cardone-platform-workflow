SELECT
<#switch (read__field__id!)>
	<#case "id">
ID_ id
	<#break>
	<#case "code">
CODE_ code
	<#break>
	<#default>
COUNT(*) count
</#switch>
FROM FD_I18N
<#include "where_.ftl">