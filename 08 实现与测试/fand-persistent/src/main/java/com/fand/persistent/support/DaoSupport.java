package com.fand.persistent.support;

import java.util.List;
import java.util.Map;

import com.fand.dto.PaginationDto;
import com.fand.persistent.builder.ModelArgs;

/**
 * 简易dao接口
 * 
 * @author haitao.yao
 */
public interface DaoSupport {
	/**
	 * 生成sql
	 * 
	 * @param sqlId
	 *            sql路径
	 * @param model
	 *            model
	 * @return sql
	 */
	String builderSql(final String sqlId, final Map<String, Object> model);

	/**
	 * 分页
	 * 
	 * @param selectForObjectSqlId
	 *            读取sql路径
	 * @param selectForMapListSqlId
	 *            查询sql路径
	 * @param paginationNo
	 *            分页号
	 * @param paginationSize
	 *            分页大小
	 * @param model
	 *            model
	 * @return 分页对象
	 */
	PaginationDto<Map<String, Object>> paginationForMapList(String selectForObjectSqlId, String selectForMapListSqlId, int paginationNo, int paginationSize,
			Map<String, Object> model);

	/**
	 * 分页
	 * 
	 * @param selectForObjectSqlId
	 *            读取sql路径
	 * @param selectForMapListSqlId
	 *            查询sql路径
	 * @param paginationNo
	 *            分页号
	 * @param paginationSize
	 *            分页大小
	 * @param modelArgss
	 *            model参数
	 * @return 分页对象
	 */
	PaginationDto<Map<String, Object>> paginationForMapList(String selectForObjectSqlId, String selectForMapListSqlId, int paginationNo, int paginationSize,
			ModelArgs... modelArgss);

	/**
	 * 分页
	 * 
	 * @param mappedClass
	 *            返回类型
	 * @param selectForObjectSqlId
	 *            读取sql路径
	 * @param selectForMappedObjectListSqlId
	 *            查询sql路径
	 * @param paginationNo
	 *            分页号
	 * @param paginationSize
	 *            分页大小
	 * @param model
	 *            model
	 * 
	 * @return 分页对象
	 */
	<T> PaginationDto<T> paginationForMappedObjectList(Class<T> mappedClass, String selectForObjectSqlId, String selectForMappedObjectListSqlId,
			int paginationNo, int paginationSize, Map<String, Object> model);

	/**
	 * 分页
	 * 
	 * @param mappedClass
	 *            返回类型
	 * @param selectForObjectSqlId
	 *            读取sql路径
	 * @param selectForMappedObjectListSqlId
	 *            查询sql路径
	 * @param paginationNo
	 *            分页号
	 * @param paginationSize
	 *            分页大小
	 * @param modelArgss
	 *            model参数
	 * 
	 * @return 分页对象
	 */
	<T> PaginationDto<T> paginationForMappedObjectList(Class<T> mappedClass, String selectForObjectSqlId, String selectForMappedObjectListSqlId,
			int paginationNo, int paginationSize, ModelArgs... modelArgss);

	/**
	 * 保存
	 * 
	 * @param updateSqlId
	 *            保存sql路径
	 * @param insertSqlId
	 *            更新sql路径
	 * @param modelArgss
	 *            model参数
	 * @return 影响行数
	 */
	int save(String updateSqlId, String insertSqlId, ModelArgs... modelArgss);

	/**
	 * 保存
	 * 
	 * @param updateSqlId
	 *            保存sql路径
	 * @param insertSqlId
	 *            更新sql路径
	 * @param objects
	 *            model参数
	 * @return 影响行数
	 */
	int save(String updateSqlId, String insertSqlId, Object... objects);

	/**
	 * 获取
	 * 
	 * @param sqlId
	 *            sql路径
	 * @param model
	 *            model
	 * @return 行字段值对象
	 */
	Map<String, Object> selectForMap(String sqlId, Map<String, Object> model);

	/**
	 * 获取
	 * 
	 * @param sqlId
	 *            sql路径
	 * @param modelArgss
	 *            model参数
	 * @return 行字段值对象
	 */
	Map<String, Object> selectForMap(String sqlId, ModelArgs... modelArgss);

	/**
	 * 查询
	 * 
	 * @param sqlId
	 *            sql路径
	 * @param model
	 *            model
	 * @return 行字段值对象列表
	 */
	List<Map<String, Object>> selectForMapList(String sqlId, Map<String, Object> model);

	/**
	 * 查询
	 * 
	 * @param sqlId
	 *            sql路径
	 * @param modelArgss
	 *            model参数
	 * @return 行字段值对象列表
	 */
	List<Map<String, Object>> selectForMapList(String sqlId, ModelArgs... modelArgss);

	/**
	 * 获取
	 * 
	 * @param mappedClass
	 *            返回类型
	 * @param sqlId
	 *            sql路径
	 * @param model
	 *            model
	 * 
	 * @return 行字段值对象
	 */
	<T> T selectForMappedObject(Class<T> mappedClass, String sqlId, Map<String, Object> model);

	/**
	 * 获取
	 * 
	 * @param mappedClass
	 *            返回类型
	 * @param sqlId
	 *            sql路径
	 * @param modelArgss
	 *            model参数
	 * 
	 * @return 行字段值对象
	 */
	<T> T selectForMappedObject(Class<T> mappedClass, String sqlId, ModelArgs... modelArgss);

	/**
	 * 查询
	 * 
	 * @param mappedClass
	 *            返回类型
	 * @param sqlId
	 *            sql路径
	 * @param model
	 *            model
	 * 
	 * @return 行字段值对象列表
	 */
	<T> List<T> selectForMappedObjectList(Class<T> mappedClass, String sqlId, Map<String, Object> model);

	/**
	 * 查询
	 * 
	 * @param mappedClass
	 *            返回类型
	 * @param sqlId
	 *            sql路径
	 * @param modelArgss
	 *            model参数
	 * 
	 * @return 行字段值对象列表
	 */
	<T> List<T> selectForMappedObjectList(Class<T> mappedClass, String sqlId, ModelArgs... modelArgss);

	/**
	 * 读取
	 * 
	 * @param requiredType
	 *            返回类型
	 * @param sqlId
	 *            sql路径
	 * @param readFieldId
	 *            读取字段标识
	 * @param model
	 *            model
	 * 
	 * @return 字段值
	 */
	<T> T selectForObject(Class<T> requiredType, String sqlId, String readFieldId, Map<String, Object> model);

	/**
	 * 读取
	 * 
	 * @param requiredType
	 *            返回类型
	 * @param sqlId
	 *            sql路径
	 * @param objectId
	 *            读取字段标识
	 * @param modelArgss
	 *            modelArgss
	 * 
	 * @return 总数
	 */
	<T> T selectForObject(Class<T> requiredType, String sqlId, String objectId, ModelArgs... modelArgss);

	/**
	 * 读取
	 * 
	 * @param elementType
	 *            返回类型
	 * @param sqlId
	 *            sql路径
	 * @param objectId
	 *            读取字段标识
	 * @param model
	 *            model
	 * 
	 * @return 字段值列表
	 */
	<T> List<T> selectForObjectList(Class<T> elementType, String sqlId, String objectId, Map<String, Object> model);

	/**
	 * 读取
	 * 
	 * @param elementType
	 *            返回类型
	 * @param sqlId
	 *            sql路径
	 * @param objectId
	 *            读取字段标识
	 * @param modelArgss
	 *            modelArgss
	 * 
	 * @return 字段值列表
	 */
	<T> List<T> selectForObjectList(Class<T> elementType, String sqlId, String objectId, ModelArgs... modelArgss);

	/**
	 * 更新
	 * 
	 * @param sqlId
	 *            sql路径
	 * @param modelList
	 *            modelList
	 * @return 影响行数
	 */
	int update(String sqlId, List<Map<String, Object>> modelList);

	/**
	 * 更新
	 * 
	 * @param sqlId
	 *            sql路径
	 * @param model
	 *            model
	 * @return 影响行数
	 */
	int update(String sqlId, Map<String, Object> model);
}