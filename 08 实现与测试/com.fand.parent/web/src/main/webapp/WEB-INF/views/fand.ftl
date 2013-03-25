<#ftl strip_whitespace=true>
<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang.StringUtils"]>
<#macro defaultIfBlank str="" defaultSt="">${StringUtils.defaultIfBlank(str, defaultSt)}</#macro>