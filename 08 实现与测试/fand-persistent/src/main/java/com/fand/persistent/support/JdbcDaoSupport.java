package com.fand.persistent.support;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.simple.ParameterizedBeanPropertyRowMapper;

import com.fand.dto.PaginationDto;
import com.fand.persistent.core.builder.DefaultModelBuilder;
import com.fand.persistent.core.builder.ModelArgs;
import com.fand.persistent.core.builder.ModelBuilder;
import com.fand.persistent.core.builder.ModelBuilderUtils;
import com.fand.template.support.TemplateSupport;

/**
 * jdbc dao
 * 
 * @author haitao.yao
 * 
 */
public class JdbcDaoSupport extends NamedParameterJdbcDaoSupport implements DaoSupport {
	/**
	 * 模板支持
	 */
	private TemplateSupport templateSupport;

	@Override
	public int create(final String sqlPath, final List<Map<String, Object>> modelList) {
		return this.update(sqlPath, ModelArgs.CREATE, modelList);
	}

	@Override
	public int create(final String sqlPath, final Map<String, Object> model) {
		return this.update(sqlPath, ModelArgs.CREATE, model);
	}

	@Override
	public int create(String sqlPathPrefixName, String sqlPathSuffixName, final Boolean isSave, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return 0;
		}

		sqlPathPrefixName = StringUtils.defaultIfBlank(sqlPathPrefixName, StringUtils.EMPTY);

		sqlPathSuffixName = StringUtils.defaultIfBlank(sqlPathSuffixName, StringUtils.EMPTY);

		final String readSqlPath = sqlPathPrefixName + ModelArgs.READ + sqlPathSuffixName;

		final String createSqlPath = sqlPathPrefixName + ModelArgs.CREATE + sqlPathSuffixName;

		final String saveSqlPath = sqlPathPrefixName + ModelArgs.SAVE + sqlPathSuffixName;

		return this.create(readSqlPath, createSqlPath, isSave, saveSqlPath, modelArgss);
	}

	@Override
	public int create(String sqlPathPrefixName, String sqlPathSuffixName, final Boolean isSave, final Object... objects) {
		if (ArrayUtils.isEmpty(objects)) {
			return 0;
		}

		sqlPathPrefixName = StringUtils.defaultIfBlank(sqlPathPrefixName, StringUtils.EMPTY);

		sqlPathSuffixName = StringUtils.defaultIfBlank(sqlPathSuffixName, StringUtils.EMPTY);

		final String readSqlPath = sqlPathPrefixName + ModelArgs.READ + sqlPathSuffixName;

		final String createSqlPath = sqlPathPrefixName + ModelArgs.CREATE + sqlPathSuffixName;

		final String saveSqlPath = sqlPathPrefixName + ModelArgs.SAVE + sqlPathSuffixName;

		return this.create(readSqlPath, createSqlPath, isSave, saveSqlPath, objects);
	}

	@Override
	public int create(final String readSqlPath, final String createSqlPath, final Boolean isSave, final String saveSqlPath, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return 0;
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByFilters(modelBuilder, modelArgss, ModelArgs.CREATE, ModelArgs.SAVE);

		final int count = this.read(readSqlPath, null, modelBuilder.build());

		if (count > 0) {
			if (!isSave) {
				return 0;
			}

			ModelBuilderUtils.putByHandle(modelBuilder, modelArgss, ModelArgs.SAVE);

			return this.save(saveSqlPath, modelBuilder.build());
		}

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss, ModelArgs.CREATE);

		return this.create(createSqlPath, modelBuilder.build());
	}

	@Override
	public int create(final String readSqlPath, final String createSqlPath, final Boolean isSave, final String saveSqlPath, final Object... objects) {
		if (ArrayUtils.isEmpty(objects)) {
			return 0;
		}

		int rowCount = 0;

		for (final Object object : objects) {
			final ModelArgs modelArgs1 = new ModelArgs(ModelArgs.CREATE, object).setSkipNullValue(true);

			final ModelArgs modelArgs2 = new ModelArgs(object).addUseAnnotationClassList(javax.persistence.Id.class);

			if (isSave) {
				final ModelArgs modelArgs3 = new ModelArgs(ModelArgs.SAVE, object).addIgnoreAnnotationClassList(javax.persistence.Id.class);

				rowCount += this.create(readSqlPath, createSqlPath, isSave, saveSqlPath, modelArgs1, modelArgs2, modelArgs3);
			} else {
				rowCount += this.create(readSqlPath, createSqlPath, isSave, saveSqlPath, modelArgs1, modelArgs2);
			}
		}

		return rowCount;
	}

	@Override
	public <T> List<T> find(final Class<T> mappedClass, String sqlPath, final Map<String, Object> model) {
		sqlPath = StringUtils.defaultIfBlank(sqlPath, ModelArgs.FIND);

		final String sql = this.templateSupport.processTemplateIntoString(sqlPath, model);

		return this.getNamedParameterJdbcTemplate().query(sql, model, ParameterizedBeanPropertyRowMapper.newInstance(mappedClass));
	}

	@Override
	public <T> List<T> find(final Class<T> mappedClass, final String sqlPath, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new ArrayList<T>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.find(mappedClass, sqlPath, modelBuilder.build());
	}

	@Override
	public List<Map<String, Object>> find(String sqlPath, final Map<String, Object> model) {
		sqlPath = StringUtils.defaultIfBlank(sqlPath, ModelArgs.FIND);

		final String sql = this.templateSupport.processTemplateIntoString(sqlPath, model);

		return this.getNamedParameterJdbcTemplate().queryForList(sql, model);
	}

	@Override
	public List<Map<String, Object>> find(final String sqlPath, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new ArrayList<Map<String, Object>>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByFilters(modelBuilder, modelArgss);

		return this.find(sqlPath, modelBuilder.build());
	}

	@Override
	public <T> T get(final Class<T> mappedClass, String sqlPath, final Map<String, Object> model) {
		sqlPath = StringUtils.defaultIfBlank(sqlPath, ModelArgs.GET);

		final String sql = this.templateSupport.processTemplateIntoString(sqlPath, model);

		return this.getNamedParameterJdbcTemplate().queryForObject(sql, model, ParameterizedBeanPropertyRowMapper.newInstance(mappedClass));
	}

	@Override
	public <T> T get(final Class<T> mappedClass, final String sqlPath, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			try {
				return mappedClass.newInstance();
			} catch (final InstantiationException e) {
				e.printStackTrace();
			} catch (final IllegalAccessException e) {
				e.printStackTrace();
			}

			return null;
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.get(mappedClass, sqlPath, modelBuilder.build());
	}

	@Override
	public Map<String, Object> get(String sqlPath, final Map<String, Object> model) {
		sqlPath = StringUtils.defaultIfBlank(sqlPath, ModelArgs.GET);

		final String sql = this.templateSupport.processTemplateIntoString(sqlPath, model);

		return this.getNamedParameterJdbcTemplate().queryForMap(sql, model);
	}

	@Override
	public Map<String, Object> get(final String sqlPath, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new HashMap<String, Object>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.get(sqlPath, modelBuilder.build());
	}

	@Override
	public <T> PaginationDto<T> pagination(final Class<T> mappedClass, final String readSqlPath, final String findSqlPath, int paginationNo,
			int paginationSize, final Map<String, Object> model) {
		final PaginationDto<T> paginationDto = new PaginationDto<T>();

		final int totalSize = this.read(readSqlPath, null, model);

		if (totalSize > 0) {
			if (model != null) {
				paginationNo = (paginationNo > 0) ? paginationNo : 1;

				paginationSize = (paginationSize > 0) ? paginationSize : 10;

				final int beginRowNum = (paginationNo * paginationSize) - (paginationSize - 1);

				model.put("begin__row__num", beginRowNum);

				final int endRowNum = paginationNo * paginationSize;

				model.put("end__row__num", endRowNum);
			}

			final List<T> dataList = this.find(mappedClass, findSqlPath, model);

			paginationDto.setDataList(dataList);
		} else {
			paginationDto.setDataList(new ArrayList<T>());
		}

		return paginationDto;
	}

	@Override
	public <T> PaginationDto<T> pagination(final Class<T> mappedClass, final String readSqlPath, final String findSqlPath, final int paginationNo,
			final int paginationSize, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new PaginationDto<T>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.pagination(mappedClass, readSqlPath, findSqlPath, paginationNo, paginationSize, modelBuilder.build());
	}

	@Override
	public PaginationDto<Map<String, Object>> pagination(final String readSqlPath, final String findSqlPath, int paginationNo, int paginationSize,
			final Map<String, Object> model) {
		final PaginationDto<Map<String, Object>> paginationDto = new PaginationDto<Map<String, Object>>();

		final int totalSize = this.read(readSqlPath, null, model);

		if (totalSize > 0) {
			if (model != null) {
				paginationNo = (paginationNo > 0) ? paginationNo : 1;

				paginationSize = (paginationSize > 0) ? paginationSize : 10;

				final int beginRowNum = (paginationNo * paginationSize) - (paginationSize - 1);

				model.put("begin__row__num", beginRowNum);

				final int endRowNum = paginationNo * paginationSize;

				model.put("end__row__num", endRowNum);
			}

			final List<Map<String, Object>> dataList = this.find(findSqlPath, model);

			paginationDto.setDataList(dataList);
		} else {
			paginationDto.setDataList(new ArrayList<Map<String, Object>>());
		}

		return paginationDto;
	}

	@Override
	public PaginationDto<Map<String, Object>> pagination(final String readSqlPath, final String findSqlPath, final int paginationNo, final int paginationSize,
			final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new PaginationDto<Map<String, Object>>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.pagination(readSqlPath, findSqlPath, paginationNo, paginationSize, modelBuilder.build());
	}

	@Override
	public <T> T read(final Class<T> requiredType, String sqlPath, final String readFieldId, Map<String, Object> model) {
		sqlPath = StringUtils.defaultIfBlank(sqlPath, ModelArgs.READ);

		if (StringUtils.isNotBlank(readFieldId)) {
			if (model == null) {
				model = new HashMap<String, Object>();
			}

			model.put(ModelArgs.READ_FIELD_ID, readFieldId);
		}

		final String sql = this.templateSupport.processTemplateIntoString(sqlPath, model);

		return this.getNamedParameterJdbcTemplate().queryForObject(sql, model, requiredType);
	}

	@Override
	public <T> T read(final Class<T> requiredType, final String sqlPath, final String readFieldId, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			try {
				return requiredType.newInstance();
			} catch (final InstantiationException e) {
				e.printStackTrace();
			} catch (final IllegalAccessException e) {
				e.printStackTrace();
			}
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.read(requiredType, sqlPath, readFieldId, modelBuilder.build());
	}

	@Override
	public int read(String sqlPath, final String readFieldId, Map<String, Object> model) {
		sqlPath = StringUtils.defaultIfBlank(sqlPath, ModelArgs.READ);

		if (StringUtils.isNotBlank(readFieldId)) {
			if (model == null) {
				model = new HashMap<String, Object>();
			}

			model.put(ModelArgs.READ_FIELD_ID, readFieldId);
		}

		final String sql = this.templateSupport.processTemplateIntoString(sqlPath, model);

		return this.getNamedParameterJdbcTemplate().queryForObject(sql, model, Integer.class);
	}

	@Override
	public int read(final String sqlPath, final String readFieldId, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {

			return 0;
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.read(sqlPath, readFieldId, modelBuilder.build());
	}

	@Override
	public <T> List<T> readList(final Class<T> elementType, String sqlPath, final String readFieldId, Map<String, Object> model) {
		sqlPath = StringUtils.defaultIfBlank(sqlPath, ModelArgs.READ);

		if (StringUtils.isNotBlank(readFieldId)) {
			if (model == null) {
				model = new HashMap<String, Object>();
			}

			model.put(ModelArgs.READ_FIELD_ID, readFieldId);
		}

		final String sql = this.templateSupport.processTemplateIntoString(sqlPath, model);

		return this.getNamedParameterJdbcTemplate().queryForList(sql, model, elementType);
	}

	@Override
	public <T> List<T> readList(final Class<T> elementType, final String sqlPath, final String readFieldId, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new ArrayList<T>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.readList(elementType, sqlPath, readFieldId, modelBuilder.build());
	}

	@Override
	public int remove(final String sqlPath, final List<Map<String, Object>> modelList) {
		return this.update(sqlPath, ModelArgs.REMOVE, modelList);
	}

	@Override
	public int remove(final String sqlPath, final Map<String, Object> model) {
		return this.update(sqlPath, ModelArgs.REMOVE, model);
	}

	@Override
	public int remove(final String sqlPath, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return 0;
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByFilters(modelBuilder, modelArgss);

		return this.remove(sqlPath, modelBuilder.build());
	}

	@Override
	public int remove(final String sqlPath, final Object... objects) {
		if (ArrayUtils.isEmpty(objects)) {
			return 0;
		}

		int rowCount = 0;

		for (final Object object : objects) {
			final ModelArgs modelArgs1 = new ModelArgs(object).addUseAnnotationClassList(javax.persistence.Id.class);

			rowCount += this.remove(sqlPath, modelArgs1);
		}

		return rowCount;
	}

	@Override
	public int save(final String saveSqlPath, final Boolean isCreate, final String readSqlPath, final String createSqlPath, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return 0;
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByFilters(modelBuilder, modelArgss, ModelArgs.CREATE, ModelArgs.SAVE);

		if (isCreate) {
			final int count = this.read(readSqlPath, null, modelBuilder.build());

			if (count < 1) {
				ModelBuilderUtils.putByHandle(modelBuilder, modelArgss, ModelArgs.CREATE);

				return this.create(createSqlPath, modelBuilder.build());
			}
		}

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss, ModelArgs.SAVE);

		return this.save(saveSqlPath, modelBuilder.build());
	}

	@Override
	public int save(final String saveSqlPath, final Boolean isCreate, final String readSqlPath, final String createSqlPath, final Object... objects) {
		if (ArrayUtils.isEmpty(objects)) {
			return 0;
		}

		int rowCount = 0;

		for (final Object object : objects) {
			final ModelArgs saveModelArgs = new ModelArgs(ModelArgs.SAVE, object).addIgnoreAnnotationClassList(javax.persistence.Id.class);

			final ModelArgs whereAndEqModelArgs = new ModelArgs(object).addUseAnnotationClassList(javax.persistence.Id.class);

			if (isCreate) {
				final ModelArgs createModelArgs = new ModelArgs(ModelArgs.CREATE, object).setSkipNullValue(true);

				rowCount += this.save(saveSqlPath, isCreate, readSqlPath, createSqlPath, saveModelArgs, whereAndEqModelArgs, createModelArgs);
			} else {
				rowCount += this.save(saveSqlPath, isCreate, readSqlPath, createSqlPath, saveModelArgs, whereAndEqModelArgs);
			}
		}

		return rowCount;
	}

	@Override
	public int save(final String sqlPath, final List<Map<String, Object>> modelList) {
		return this.update(sqlPath, ModelArgs.SAVE, modelList);
	}

	@Override
	public int save(final String sqlPath, final Map<String, Object> model) {
		return this.update(sqlPath, ModelArgs.SAVE, model);
	}

	@Override
	public int save(String sqlPathPrefixName, String sqlPathSuffixName, final Boolean isCreate, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return 0;
		}

		sqlPathPrefixName = StringUtils.defaultIfBlank(sqlPathPrefixName, StringUtils.EMPTY);

		sqlPathSuffixName = StringUtils.defaultIfBlank(sqlPathSuffixName, StringUtils.EMPTY);

		final String readSqlPath = sqlPathPrefixName + ModelArgs.READ + sqlPathSuffixName;

		final String createSqlPath = sqlPathPrefixName + ModelArgs.CREATE + sqlPathSuffixName;

		final String saveSqlPath = sqlPathPrefixName + ModelArgs.SAVE + sqlPathSuffixName;

		return this.save(saveSqlPath, isCreate, readSqlPath, createSqlPath, modelArgss);
	}

	@Override
	public int save(String sqlPathPrefixName, String sqlPathSuffixName, final Boolean isCreate, final Object... objects) {
		if (ArrayUtils.isEmpty(objects)) {
			return 0;
		}

		sqlPathPrefixName = StringUtils.defaultIfBlank(sqlPathPrefixName, StringUtils.EMPTY);

		sqlPathSuffixName = StringUtils.defaultIfBlank(sqlPathSuffixName, StringUtils.EMPTY);

		final String readSqlPath = sqlPathPrefixName + ModelArgs.READ + sqlPathSuffixName;

		final String createSqlPath = sqlPathPrefixName + ModelArgs.CREATE + sqlPathSuffixName;

		final String saveSqlPath = sqlPathPrefixName + ModelArgs.SAVE + sqlPathSuffixName;

		return this.save(saveSqlPath, isCreate, readSqlPath, createSqlPath, objects);
	}

	public void setTemplateSupport(final TemplateSupport templateSupport) {
		this.templateSupport = templateSupport;
	}

	@Override
	public int update(final String sqlPath, final String defaultSqlPath, final List<Map<String, Object>> modelList) {
		if (CollectionUtils.isEmpty(modelList)) {
			return 0;
		}

		int rowCount = 0;

		for (final Map<String, Object> model : modelList) {
			rowCount += this.update(sqlPath, defaultSqlPath, model);
		}

		return rowCount;
	}

	@Override
	public int update(String sqlPath, final String defaultSqlPath, final Map<String, Object> model) {
		sqlPath = StringUtils.defaultIfBlank(sqlPath, defaultSqlPath);

		final String sql = this.templateSupport.processTemplateIntoString(sqlPath, model);

		return this.getNamedParameterJdbcTemplate().update(sql, model);
	}
}
