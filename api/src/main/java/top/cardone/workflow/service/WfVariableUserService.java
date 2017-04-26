package top.cardone.workflow.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 工作流变量与用户服务
 *
 * @author yao hai tao
 */
public interface WfVariableUserService extends PageService {
	/**
     * @see top.cardone.workflow.service.WfVariableUserService#page
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableUserService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#page
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableUserService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#findList
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableUserService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#findOne
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableUserService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#readList
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableUserService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#readOne
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableUserService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#delete
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    int deleteCache(Object delete);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#deleteAll
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    int deleteAllCache();

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    int deleteByIdsCache(Object ids);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#deleteList
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#findList
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableUserService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#findOne
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableUserService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#insert
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    int insertCache(Object insert);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    int insertByNotExistsCache(Object insert);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#insertList
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#readList
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableUserService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#readOne
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableUserService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#save
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    Integer saveCache(Object save);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#update
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    int updateCache(Object update);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#updateList
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    int[] updateListCache(List<Object> updateList);

	/**
     * @see top.cardone.workflow.service.WfVariableUserService#saveList
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableUserService", allEntries = true)
    int[][] saveListCache(List<Object> saveList);
	
    /**
     * 查询工作流变量与用户对象
     *
     * @param findOne 工作流变量与用户标识
     * @return 工作流变量与用户对象
     */
    Map<String, Object> findOneByWfVariableUserId(Map<String, Object> findOne);
}