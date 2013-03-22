package com.fand.extend.dao;

import java.util.List;
import java.util.Map;

import com.fand.builder.ModelArgs;
import com.fand.dto.PaginationDto;

/**
 * 简易dao接口
 * 
 * @author yaoht
 */
public interface SimpleDao {
	/**
	 * 创建
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param modelList
	 *            modelList
	 * @return 影响行数
	 */
	int create(String sqlPath, List<Map<String, Object>> modelList);

	/**
	 * 创建
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param model
	 *            model
	 * @return 影响行数
	 */
	int create(String sqlPath, Map<String, Object> model);

	/**
	 * 创建
	 * 
	 * @param sqlPathPrefixName
	 *            sql路径前缀
	 * @param sqlPathSuffixName
	 *            sql路径后缀
	 * @param isSave
	 *            是否保存
	 * @param modelArgss
	 *            model参数
	 * 
	 * @return 影响行数
	 */
	int create(String sqlPathPrefixName, String sqlPathSuffixName, Boolean isSave, ModelArgs... modelArgss);

	/**
	 * 创建
	 * 
	 * @param sqlPathPrefixName
	 *            sql路径前缀
	 * @param sqlPathSuffixName
	 *            sql路径后缀
	 * @param isSave
	 *            是否保存
	 * @param objects
	 *            对象集合
	 * 
	 * @return 影响行数
	 */
	int create(String sqlPathPrefixName, String sqlPathSuffixName, Boolean isSave, Object... objects);

	/**
	 * 创建
	 * 
	 * @param readSqlPath
	 *            读取sql路径
	 * @param createSqlPath
	 *            创建sql路径
	 * @param isSave
	 *            是否保存
	 * @param saveSqlPath
	 *            保存sql路径
	 * @param modelArgss
	 *            model参数
	 * @return 影响行数
	 */
	int create(String readSqlPath, String createSqlPath, Boolean isSave, String saveSqlPath, ModelArgs... modelArgss);

	/**
	 * 创建
	 * 
	 * @param readSqlPath
	 *            读取sql路径
	 * @param createSqlPath
	 *            创建sql路径
	 * @param isSave
	 *            是否保存
	 * @param saveSqlPath
	 *            保存sql路径
	 * @param objects
	 *            对象集合
	 * @return 影响行数
	 */
	int create(String readSqlPath, String createSqlPath, Boolean isSave, String saveSqlPath, Object... objects);

	/**
	 * 查询
	 * 
	 * @param mappedClass
	 *            数据类型
	 * @param sqlPath
	 *            sql路径
	 * @param model
	 *            model
	 * 
	 * @return 行字段值对象列表
	 */
	<T> List<T> find(Class<T> mappedClass, String sqlPath, Map<String, Object> model);

	/**
	 * 查询
	 * 
	 * @param mappedClass
	 *            数据类型
	 * @param sqlPath
	 *            sql路径
	 * @param modelArgss
	 *            model参数
	 * 
	 * @return 行字段值对象列表
	 */
	<T> List<T> find(Class<T> mappedClass, String sqlPath, ModelArgs... modelArgss);

	/**
	 * 查询
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param model
	 *            model
	 * @return 行字段值对象列表
	 */
	List<Map<String, Object>> find(String sqlPath, Map<String, Object> model);

	/**
	 * 查询
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param modelArgss
	 *            model参数
	 * @return 行字段值对象列表
	 */
	List<Map<String, Object>> find(String sqlPath, ModelArgs... modelArgss);

	/**
	 * 获取
	 * 
	 * @param mappedClass
	 *            数据类型
	 * @param sqlPath
	 *            sql路径
	 * @param model
	 *            model
	 * 
	 * @return 行字段值对象
	 */
	<T> T get(Class<T> mappedClass, String sqlPath, Map<String, Object> model);

	/**
	 * 获取
	 * 
	 * @param mappedClass
	 *            数据类型
	 * @param sqlPath
	 *            sql路径
	 * @param modelArgss
	 *            model参数
	 * 
	 * @return 行字段值对象
	 */
	<T> T get(Class<T> mappedClass, String sqlPath, ModelArgs... modelArgss);

	/**
	 * 获取
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param model
	 *            model
	 * @return 行字段值对象
	 */
	Map<String, Object> get(String sqlPath, Map<String, Object> model);

	/**
	 * 获取
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param modelArgss
	 *            model参数
	 * @return 行字段值对象
	 */
	Map<String, Object> get(String sqlPath, ModelArgs... modelArgss);

	/**
	 * 分页
	 * 
	 * @param mappedClass
	 *            数据类型
	 * @param readSqlPath
	 *            读取sql路径
	 * @param findSqlPath
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
	<T> PaginationDto<T> pagination(Class<T> mappedClass, String readSqlPath, String findSqlPath, int paginationNo, int paginationSize,
			Map<String, Object> model);

	/**
	 * 分页
	 * 
	 * @param mappedClass
	 *            数据类型
	 * @param readSqlPath
	 *            读取sql路径
	 * @param findSqlPath
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
	<T> PaginationDto<T> pagination(Class<T> mappedClass, String readSqlPath, String findSqlPath, int paginationNo, int paginationSize, ModelArgs... modelArgss);

	/**
	 * 分页
	 * 
	 * @param readSqlPath
	 *            读取sql路径
	 * @param findSqlPath
	 *            查询sql路径
	 * @param paginationNo
	 *            分页号
	 * @param paginationSize
	 *            分页大小
	 * @param model
	 *            model
	 * @return 分页对象
	 */
	PaginationDto<Map<String, Object>> pagination(String readSqlPath, String findSqlPath, int paginationNo, int paginationSize, Map<String, Object> model);

	/**
	 * 分页
	 * 
	 * @param readSqlPath
	 *            读取sql路径
	 * @param findSqlPath
	 *            查询sql路径
	 * @param paginationNo
	 *            分页号
	 * @param paginationSize
	 *            分页大小
	 * @param modelArgss
	 *            model参数
	 * @return 分页对象
	 */
	PaginationDto<Map<String, Object>> pagination(String readSqlPath, String findSqlPath, int paginationNo, int paginationSize, ModelArgs... modelArgss);

	/**
	 * 读取
	 * 
	 * @param requiredType
	 *            数据类型
	 * @param sqlPath
	 *            sql路径
	 * @param readFieldId
	 *            读取字段标识
	 * @param model
	 *            model
	 * 
	 * @return 字段值
	 */
	<T> T read(Class<T> requiredType, String sqlPath, String readFieldId, Map<String, Object> model);

	/**
	 * 读取
	 * 
	 * @param requiredType
	 *            数据类型
	 * @param sqlPath
	 *            sql路径
	 * @param readFieldId
	 *            读取字段标识
	 * @param modelArgss
	 *            modelArgss
	 * 
	 * @return 字段值
	 */
	<T> T read(Class<T> requiredType, String sqlPath, String readFieldId, ModelArgs... modelArgss);

	/**
	 * 读取
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param readFieldId
	 *            读取字段标识
	 * @param model
	 *            model
	 * @return 总数
	 */
	int read(String sqlPath, String readFieldId, Map<String, Object> model);

	/**
	 * 读取
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param readFieldId
	 *            读取字段标识
	 * @param modelArgss
	 *            modelArgss
	 * @return 总数
	 */
	int read(String sqlPath, String readFieldId, ModelArgs... modelArgss);

	/**
	 * 读取
	 * 
	 * @param elementType
	 *            数据类型
	 * @param sqlPath
	 *            sql路径
	 * @param readFieldId
	 *            读取字段标识
	 * @param model
	 *            model
	 * 
	 * @return 字段值列表
	 */
	<T> List<T> readList(Class<T> elementType, String sqlPath, String readFieldId, Map<String, Object> model);

	/**
	 * 读取
	 * 
	 * @param elementType
	 *            数据类型
	 * @param sqlPath
	 *            sql路径
	 * @param readFieldId
	 *            读取字段标识
	 * @param modelArgss
	 *            modelArgss
	 * 
	 * @return 字段值列表
	 */
	<T> List<T> readList(Class<T> elementType, String sqlPath, String readFieldId, ModelArgs... modelArgss);

	/**
	 * 删除
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param modelList
	 *            modelList
	 * @return 影响行数
	 */
	int remove(String sqlPath, List<Map<String, Object>> modelList);

	/**
	 * 删除
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param model
	 *            model
	 * @return 影响行数
	 */
	int remove(String sqlPath, Map<String, Object> model);

	/**
	 * 删除
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param modelArgss
	 *            model参数
	 * @return 影响行数
	 */
	int remove(String sqlPath, ModelArgs... modelArgss);

	/**
	 * 删除
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param objects
	 *            model参数
	 * @return 影响行数
	 */
	int remove(String sqlPath, Object... objects);

	/**
	 * 保存
	 * 
	 * @param saveSqlPath
	 *            保存sql路径
	 * @param isCreate
	 *            是否创建
	 * @param readSqlPath
	 *            读取sql路径
	 * @param createSqlPath
	 *            创建sql路径
	 * @param modelArgss
	 *            model参数
	 * @return 影响行数
	 */
	int save(String saveSqlPath, Boolean isCreate, String readSqlPath, String createSqlPath, ModelArgs... modelArgss);

	/**
	 * 保存
	 * 
	 * @param saveSqlPath
	 *            保存sql路径
	 * @param isCreate
	 *            是否创建
	 * @param readSqlPath
	 *            读取sql路径
	 * @param createSqlPath
	 *            创建sql路径
	 * @param objects
	 *            model参数
	 * @return 影响行数
	 */
	int save(String saveSqlPath, Boolean isCreate, String readSqlPath, String createSqlPath, Object... objects);

	/**
	 * 保存
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param modelList
	 *            modelList
	 * @return 影响行数
	 */
	int save(String sqlPath, List<Map<String, Object>> modelList);

	/**
	 * 保存
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param model
	 *            model
	 * @return 影响行数
	 */
	int save(String sqlPath, Map<String, Object> model);

	/**
	 * 保存
	 * 
	 * @param sqlPathPrefixName
	 *            sql路径前缀
	 * @param sqlPathSuffixName
	 *            sql路径后缀
	 * @param isCreate
	 *            是否创建
	 * @param modelArgss
	 *            model参数
	 * 
	 * @return 影响行数
	 */
	int save(String sqlPathPrefixName, String sqlPathSuffixName, Boolean isCreate, ModelArgs... modelArgss);

	/**
	 * 保存
	 * 
	 * @param sqlPathPrefixName
	 *            sql路径前缀
	 * @param sqlPathSuffixName
	 *            sql路径后缀
	 * @param isCreate
	 *            是否创建
	 * @param objects
	 *            model参数
	 * 
	 * @return 影响行数
	 */
	int save(String sqlPathPrefixName, String sqlPathSuffixName, Boolean isCreate, Object... objects);

	/**
	 * 更新
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param defaultSqlPath
	 *            默认sql路径
	 * @param modelList
	 *            modelList
	 * 
	 * @return 影响行数
	 */
	int update(String sqlPath, String defaultSqlPath, final List<Map<String, Object>> modelList);

	/**
	 * 更新
	 * 
	 * @param sqlPath
	 *            sql路径
	 * @param defaultSqlPath
	 *            默认sql路径
	 * @param model
	 *            model
	 * 
	 * @return 影响行数
	 */
	int update(String sqlPath, String defaultSqlPath, final Map<String, Object> model);
}