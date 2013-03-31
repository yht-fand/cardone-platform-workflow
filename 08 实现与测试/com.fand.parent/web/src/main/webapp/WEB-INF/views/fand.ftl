<#ftl strip_whitespace=true>
<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang.StringUtils"]>
<#macro defaultIfBlank str="" defaultSt="">${StringUtils.defaultIfBlank(str, defaultSt)}</#macro>

<#assign webRoot = springMacroRequestContext.getContextUrl('')>
<#assign jsRoot = webRoot + '/resources/js'>
<#assign cssRoot = webRoot + '/resources/css'>
<#assign widgetRoot = webRoot + '/resources/widget'>