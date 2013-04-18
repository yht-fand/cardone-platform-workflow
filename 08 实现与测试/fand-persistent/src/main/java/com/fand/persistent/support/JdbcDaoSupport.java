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
import com.fand.persistent.builder.DefaultModelBuilder;
import com.fand.persistent.builder.ModelArgs;
import com.fand.persistent.builder.ModelBuilder;
import com.fand.persistent.builder.ModelBuilderUtils;
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
	public String builderSql(final String sqlId, final Map<String, Object> model) {
		final String sql = this.templateSupport.processTemplateIntoString(sqlId, model);

		return sql;
	}

	@Override
	public PaginationDto<Map<String, Object>> paginationForMapList(final String selectForObjectSqlId, final String selectForMapListSqlId, int paginationNo,
			int paginationSize, final Map<String, Object> model) {
		final PaginationDto<Map<String, Object>> paginationDto = new PaginationDto<Map<String, Object>>();

		final int totalSize = this.selectForObject(Integer.class, selectForObjectSqlId, null, model);

		if (totalSize > 0) {
			if (model != null) {
				paginationNo = (paginationNo > 0) ? paginationNo : 1;

				paginationSize = (paginationSize > 0) ? paginationSize : 10;

				final int beginRowNum = (paginationNo * paginationSize) - (paginationSize - 1);

				model.put("begin__row__num", beginRowNum);

				final int endRowNum = paginationNo * paginationSize;

				model.put("end__row__num", endRowNum);
			}

			final List<Map<String, Object>> dataList = this.selectForMapList(selectForMapListSqlId, model);

			paginationDto.setDataList(dataList);
		} else {
			paginationDto.setDataList(new ArrayList<Map<String, Object>>());
		}

		paginationDto.setNo(paginationNo);

		paginationDto.setSize(paginationSize);

		return paginationDto;
	}

	@Override
	public PaginationDto<Map<String, Object>> paginationForMapList(final String selectForObjectSqlId, final String selectForMapListSqlId,
			final int paginationNo, final int paginationSize, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new PaginationDto<Map<String, Object>>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.paginationForMapList(selectForObjectSqlId, selectForMapListSqlId, paginationNo, paginationSize, modelBuilder.build());
	}

	@Override
	public <T> PaginationDto<T> paginationForMappedObjectList(final Class<T> mappedClass, final String selectForObjectSqlId,
			final String selectForMappedObjectListSqlId, int paginationNo, int paginationSize, final Map<String, Object> model) {
		final PaginationDto<T> paginationDto = new PaginationDto<T>();

		final int totalSize = this.selectForObject(Integer.class, selectForObjectSqlId, null, model);

		if (totalSize > 0) {
			if (model != null) {
				paginationNo = (paginationNo > 0) ? paginationNo : 1;

				paginationSize = (paginationSize > 0) ? paginationSize : 10;

				final int beginRowNum = (paginationNo * paginationSize) - (paginationSize - 1);

				model.put("begin__row__num", beginRowNum);

				final int endRowNum = paginationNo * paginationSize;

				model.put("end__row__num", endRowNum);
			}

			final List<T> dataList = this.selectForMappedObjectList(mappedClass, selectForMappedObjectListSqlId, model);

			paginationDto.setDataList(dataList);
		} else {
			paginationDto.setDataList(new ArrayList<T>());
		}

		paginationDto.setNo(paginationNo);

		paginationDto.setSize(paginationSize);

		return paginationDto;
	}

	@Override
	public <T> PaginationDto<T> paginationForMappedObjectList(final Class<T> mappedClass, final String selectForObjectSqlId,
			final String selectForMappedObjectListSqlId, final int paginationNo, final int paginationSize, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new PaginationDto<T>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.paginationForMappedObjectList(mappedClass, selectForObjectSqlId, selectForMappedObjectListSqlId, paginationNo, paginationSize,
				modelBuilder.build());
	}

	@Override
	public int save(final String updateSqlId, final String insertSqlId, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return 0;
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss, ModelArgs.UPDATE);

		int rowCount = this.update(updateSqlId, modelBuilder.build());

		if (rowCount < 1) {
			ModelBuilderUtils.putByHandle(modelBuilder, modelArgss, ModelArgs.INSERT);

			rowCount = this.update(insertSqlId, modelBuilder.build());
		}

		return rowCount;
	}

	@Override
	public int save(final String updateSqlId, final String insertSqlId, final Object... objects) {
		if (ArrayUtils.isEmpty(objects)) {
			return 0;
		}

		int rowCount = 0;

		for (final Object object : objects) {
			final ModelArgs updateModelArgs = new ModelArgs(ModelArgs.UPDATE, object).addIgnoreAnnotationClassList(javax.persistence.Id.class);

			final ModelArgs insertModelArgs = new ModelArgs(ModelArgs.INSERT, object).setSkipNullValue(true);

			rowCount += this.save(updateSqlId, insertSqlId, updateModelArgs, insertModelArgs);
		}

		return rowCount;
	}

	@Override
	public Map<String, Object> selectForMap(final String sqlId, final Map<String, Object> model) {
		final String sql = this.builderSql(sqlId, model);

		return this.getNamedParameterJdbcTemplate().queryForMap(sql, model);
	}

	@Override
	public Map<String, Object> selectForMap(final String sqlId, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new HashMap<String, Object>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.selectForMap(sqlId, modelBuilder.build());
	}

	@Override
	public List<Map<String, Object>> selectForMapList(final String sqlId, final Map<String, Object> model) {
		final String sql = this.builderSql(sqlId, model);

		return this.getNamedParameterJdbcTemplate().queryForList(sql, model);
	}

	@Override
	public List<Map<String, Object>> selectForMapList(final String sqlId, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new ArrayList<Map<String, Object>>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByFilters(modelBuilder, modelArgss);

		return this.selectForMapList(sqlId, modelBuilder.build());
	}

	@Override
	public <T> T selectForMappedObject(final Class<T> mappedClass, final String sqlId, final Map<String, Object> model) {
		final String sql = this.builderSql(sqlId, model);

		return this.getNamedParameterJdbcTemplate().queryForObject(sql, model, ParameterizedBeanPropertyRowMapper.newInstance(mappedClass));
	}

	@Override
	public <T> T selectForMappedObject(final Class<T> mappedClass, final String sqlId, final ModelArgs... modelArgss) {
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

		return this.selectForMappedObject(mappedClass, sqlId, modelBuilder.build());
	}

	@Override
	public <T> List<T> selectForMappedObjectList(final Class<T> mappedClass, final String sqlId, final Map<String, Object> model) {
		final String sql = this.builderSql(sqlId, model);

		return this.getNamedParameterJdbcTemplate().query(sql, model, ParameterizedBeanPropertyRowMapper.newInstance(mappedClass));
	}

	@Override
	public <T> List<T> selectForMappedObjectList(final Class<T> mappedClass, final String sqlId, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new ArrayList<T>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.selectForMappedObjectList(mappedClass, sqlId, modelBuilder.build());
	}

	@Override
	public <T> T selectForObject(final Class<T> requiredType, final String sqlId, final String objectId, Map<String, Object> model) {
		if (StringUtils.isNotBlank(objectId)) {
			if (model == null) {
				model = new HashMap<String, Object>();
			}

			model.put(ModelArgs.OBJECT_ID, objectId);
		}

		final String sql = this.builderSql(sqlId, model);

		return this.getNamedParameterJdbcTemplate().queryForObject(sql, model, requiredType);
	}

	@Override
	public <T> T selectForObject(final Class<T> requiredType, final String sqlId, final String objectId, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return null;
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.selectForObject(requiredType, sqlId, objectId, modelBuilder.build());
	}

	@Override
	public <T> List<T> selectForObjectList(final Class<T> elementType, final String sqlId, final String objectId, Map<String, Object> model) {
		if (StringUtils.isNotBlank(objectId)) {
			if (model == null) {
				model = new HashMap<String, Object>();
			}

			model.put(ModelArgs.OBJECT_ID, objectId);
		}

		final String sql = this.builderSql(sqlId, model);

		return this.getNamedParameterJdbcTemplate().queryForList(sql, model, elementType);
	}

	@Override
	public <T> List<T> selectForObjectList(final Class<T> elementType, final String sqlId, final String objectId, final ModelArgs... modelArgss) {
		if (ArrayUtils.isEmpty(modelArgss)) {
			return new ArrayList<T>();
		}

		final ModelBuilder modelBuilder = new DefaultModelBuilder();

		ModelBuilderUtils.putByHandle(modelBuilder, modelArgss);

		return this.selectForObjectList(elementType, sqlId, objectId, modelBuilder.build());
	}

	public void setTemplateSupport(final TemplateSupport templateSupport) {
		this.templateSupport = templateSupport;
	}

	@Override
	public int update(final String sqlId, final List<Map<String, Object>> modelList) {
		if (CollectionUtils.isEmpty(modelList)) {
			return 0;
		}

		int rowCount = 0;

		for (final Map<String, Object> model : modelList) {
			rowCount += this.update(sqlId, model);
		}

		return rowCount;
	}

	@Override
	public int update(final String sqlId, final Map<String, Object> model) {
		final String sql = this.builderSql(sqlId, model);

		return this.getNamedParameterJdbcTemplate().update(sql, model);
	}
}
