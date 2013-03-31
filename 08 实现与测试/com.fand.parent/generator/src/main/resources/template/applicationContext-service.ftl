<#include "macro_.ftl">
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:context="http://www.springframework.org/schema/context"
	xmlns:aop="http://www.springframework.org/schema/aop" xmlns:tx="http://www.springframework.org/schema/tx"
	xmlns:tool="http://www.springframework.org/schema/tool"
	xsi:schemaLocation="
	http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-3.0.xsd
	http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context-3.0.xsd
	http://www.springframework.org/schema/aop http://www.springframework.org/schema/aop/spring-aop-3.0.xsd
	http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx-3.0.xsd
	http://www.springframework.org/schema/tool http://www.springframework.org/schema/tool/spring-tool-3.0.xsd"
	default-lazy-init="false">
	<!-- ${businessMapper.name!businessCode} -->
	<bean id="${packageCode}.${moduleMapperKey}.dao.${businessCode}Dao" class="${packageCode}.${moduleMapperKey}.dao.Jdbc${businessCode}Dao"
		parent="daoTemplate">
	</bean>

	<!-- ${businessMapper.name!businessCode} -->
	<bean id="${packageCode}.${moduleMapperKey}.service.${businessCode}Service"
		class="${packageCode}.${moduleMapperKey}.service.Default${businessCode}Service">
		<!-- ${businessMapper.name!businessCode} -->
		<property name="dao" ref="${packageCode}.${moduleMapperKey}.dao.${businessCode}Dao" />
	</bean>
</beans>