package com.fand.generator.template;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.Validate;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import com.fand.generator.mapper.BusinessMapper;
import com.fand.generator.mapper.ModuleMapper;
import com.fand.generator.mapper.PoMapper;
import com.fand.generator.mapper.ProjectMapper;

import freemarker.ext.beans.BeansWrapper;
import freemarker.template.Configuration;

public class DefaultTemplate implements Template {
	private final static Log log = LogFactory.getLog(DefaultTemplate.class);

	private Configuration configuration;

	private String outputDir;

	private boolean overrideFile = true;

	private ProjectMapper projectMapper;

	public void init() {
		Validate.notNull(this.projectMapper);

		Validate.notNull(this.outputDir);
	}

	private void makeFile(final String templateString, final Map<String, ?> contextMap, final String templateName, final Map<String, Object> model)
			throws Exception {
		DefaultTemplate.log.info(templateName);

		DefaultTemplate.log.info(templateString);

		final String filePathName = com.fand.template.utils.FreemarkerTemplateUtils.processString(templateString, contextMap);

		DefaultTemplate.log.info(filePathName);

		final File file = new File(filePathName);

		if (file.exists()) {
			DefaultTemplate.log.info("file.exists():true");

			if (this.overrideFile) {
				FileUtils.deleteQuietly(file);
			} else {
				return;
			}
		}

		final freemarker.template.Template template = this.configuration.getTemplate(templateName);

		final String data = FreeMarkerTemplateUtils.processTemplateIntoString(template, model);

		FileUtils.writeStringToFile(file, data);
	}

	private void modelPutSerialVersionUID(final List<String> serialVersionUIDList, final Map<String, Object> model) {
		String serialVersionUID = RandomStringUtils.randomNumeric(18);

		while (StringUtils.startsWithAny(serialVersionUID, new String[] { "0", "9" }) || serialVersionUIDList.contains(serialVersionUID)) {
			serialVersionUID = RandomStringUtils.randomNumeric(18);
		}

		serialVersionUIDList.add(serialVersionUID);

		model.put("serialVersionUID", serialVersionUID);
	}

	@Override
	public void run(final Map<String, PoMapper> poMapperMap) throws Exception {
		final String srcDirFormat = "${outputDir!}${separator!}${rootDir!}${separator!}${rootDirType!}${separator!}${dirType!}${separator!}";

		final Map<String, Object> contextMap = new HashMap<String, Object>();

		contextMap.put("outputDir", this.outputDir);

		contextMap.put("separator", File.separator);

		final String[] layers = new String[] { "po", "dto", "vo", "dao", "service", "webService", "web" };

		contextMap.put("rootDir", "src");

		final String[] rootDirTypes = new String[] { "main", "test" };

		final String[] dirTypes = new String[] { "java", "resources", "webapp" };

		final String[] entityLayers = new String[] { "po", "dto", "dao", "bo", "web" };

		final String[] businessLayers = new String[] { "dao", "vo", "service", "webService", "web" };

		final String packageDir = StringUtils.replace(this.projectMapper.getPackageCode(), ".", File.separator);

		contextMap.put("rootDirType", "main");

		contextMap.put("packageDir", packageDir);

		final List<String> serialVersionUIDList = new ArrayList<String>();

		for (final String layer : layers) {
			contextMap.put("layer", layer);
			for (final String rootDirType : rootDirTypes) {
				contextMap.put("rootDirType", rootDirType);
				for (final String dirType : dirTypes) {
					contextMap.put("dirType", dirType);
					for (final String moduleMapperKey : this.projectMapper.getModuleMapperMap().keySet()) {
						contextMap.put("moduleMapperKey", moduleMapperKey);

						final ModuleMapper moduleMapper = this.projectMapper.getModuleMapperMap().get(moduleMapperKey);

						moduleMapper.setCode(moduleMapperKey);

						final Map<String, Object> model = new HashMap<String, Object>();

						model.put("statics", BeansWrapper.getDefaultInstance().getStaticModels());

						model.put("projectMapper", this.projectMapper);

						model.put("packageCode", this.projectMapper.getPackageCode());

						model.put("moduleMapper", moduleMapper);

						model.put("moduleMapperKey", moduleMapperKey);

						final String javaTemplateString = StringUtils.join(new String[] { srcDirFormat,
								"${packageDir!}${separator!}${moduleMapperKey!}${separator!}${layer!}${separator!}${filename!}.java" });

						String templateName;

						if (ArrayUtils.contains(entityLayers, layer)) {
							for (final BusinessMapper businessMa : moduleMapper.getBusinessMap().values()) {
								for (final String entityKey : businessMa.getEntityList()) {
									if (!poMapperMap.containsKey(entityKey)) {
										DefaultTemplate.log.info("not contains entity:" + entityKey);

										continue;
									}

									final PoMapper poMapper = poMapperMap.get(entityKey);

									model.put("poMapper", poMapper);

									this.modelPutSerialVersionUID(serialVersionUIDList, model);

									if ("main".equals(rootDirType) && "java".equals(dirType) && "po".equals(layer)) {
										poMapper.setModuleCode(moduleMapperKey);

										contextMap.put("filename", poMapper.getCode());

										templateName = "Po.java.ftl";

										this.makeFile(javaTemplateString, contextMap, templateName, model);
									} else if ("main".equals(rootDirType) && "java".equals(dirType) && "dto".equals(layer)) {
										contextMap.put("filename", poMapper.getCode() + "Dto");

										templateName = "Dto.java.ftl";

										this.makeFile(javaTemplateString, contextMap, templateName, model);
									} else if ("main".equals(rootDirType) && "resources".equals(dirType) && "web".equals(layer)) {
										final String sqlExpressionString = StringUtils.join(new String[] { srcDirFormat,
												"sql${separator!}oracle${separator!}${moduleMapperKey!}${separator!}${filename!}${poCo!}By1.ftl" });

										contextMap.put("poCo", poMapper.getCode());

										contextMap.put("camelCasePoCo", com.fand.utils.StringUtils.toCamelCase(poMapper.getCode()));

										final String[] sqlFileNames = new String[] { "where", "insert", "delete", "update", "selectForMappedObjectList",
												"selectForObject" };

										for (final String sqlFileName : sqlFileNames) {
											contextMap.put("filename", sqlFileName);

											templateName = sqlFileName + ".ftl";

											this.makeFile(sqlExpressionString, contextMap, templateName, model);
										}
									}
								}
							}
						}

						if (ArrayUtils.contains(businessLayers, layer)) {
							for (final String businessCode : moduleMapper.getBusinessMap().keySet()) {
								this.setBusiness(poMapperMap, moduleMapper, model, businessCode);

								this.modelPutSerialVersionUID(serialVersionUIDList, model);

								if ("main".equals(rootDirType) && "java".equals(dirType) && "dao".equals(layer)) {
									final PoMapper poMapper = new PoMapper();

									poMapper.setCode(businessCode);

									final BusinessMapper businessMapper = moduleMapper.getBusinessMap().get(businessCode);

									poMapper.setRemarks(businessMapper.getName());

									model.put("poMapper", poMapper);

									contextMap.put("filename", businessCode + "Dao");

									templateName = "Dao.java.ftl";

									this.makeFile(javaTemplateString, contextMap, templateName, model);

									contextMap.put("filename", "Jdbc" + businessCode + "Dao");

									templateName = "JdbcDao.java.ftl";

									this.makeFile(javaTemplateString, contextMap, templateName, model);
								} else if ("main".equals(rootDirType) && "java".equals(dirType) && "vo".equals(layer)) {
									contextMap.put("filename", businessCode + "Vo");

									templateName = "Vo.java.ftl";

									this.makeFile(javaTemplateString, contextMap, templateName, model);
								} else if ("main".equals(rootDirType) && "java".equals(dirType) && "service".equals(layer)) {
									contextMap.put("filename", businessCode + "Service");

									templateName = "Service.java.ftl";

									this.makeFile(javaTemplateString, contextMap, templateName, model);

									contextMap.put("filename", "Default" + businessCode + "Service");

									templateName = "DefaultService.java.ftl";

									this.makeFile(javaTemplateString, contextMap, templateName, model);
								} else if ("main".equals(rootDirType) && "resources".equals(dirType) && "web".equals(layer)) {
									final String applicationContextXmlExpressionString = StringUtils.join(new String[] { srcDirFormat,
											"${moduleMapperKey!}${separator!}${filename!}" });

									this.setBusiness(poMapperMap, moduleMapper, model, businessCode);

									contextMap.put("filename", "applicationContext-" + businessCode + ".xml");

									templateName = "applicationContext-service.ftl";

									this.makeFile(applicationContextXmlExpressionString, contextMap, templateName, model);
								}
							}
						}
					}
				}
			}
		}
	}

	private void setBusiness(final Map<String, PoMapper> poMapperMap, final ModuleMapper moduleMapper, final Map<String, Object> model,
			final String businessCode) {
		final BusinessMapper businessMapper = moduleMapper.getBusinessMap().get(businessCode);

		businessMapper.setCode(businessCode);

		model.put("businessMapper", businessMapper);

		model.put("businessCode", businessCode);

		final List<PoMapper> poMapperList = new ArrayList<PoMapper>();

		for (final String entityKey : businessMapper.getEntityList()) {
			final PoMapper poMapper = poMapperMap.get(entityKey);

			poMapperList.add(poMapper);
		}

		model.put("poMapperList", poMapperList);

		model.put("entityList", businessMapper.getEntityList());
	}

	public void setConfiguration(final Configuration configuration) {
		this.configuration = configuration;
	}

	public void setOutputDir(final String outputDir) {
		this.outputDir = outputDir;
	}

	public void setOverrideFile(final boolean overrideFile) {
		this.overrideFile = overrideFile;
	}

	public void setProjectMapper(final ProjectMapper projectMapper) {
		this.projectMapper = projectMapper;
	}
}
