package top.cardone.workflow.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 工作流变量服务
 *
 * @author yao hai tao
 */
public interface WfVariableService extends PageService {
	/**
     * @see top.cardone.workflow.service.WfVariableService#page
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

	/**
     * @see top.cardone.workflow.service.WfVariableService#page
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

	/**
     * @see top.cardone.workflow.service.WfVariableService#findList
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

	/**
     * @see top.cardone.workflow.service.WfVariableService#findOne
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

	/**
     * @see top.cardone.workflow.service.WfVariableService#readList
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

	/**
     * @see top.cardone.workflow.service.WfVariableService#readOne
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

	/**
     * @see top.cardone.workflow.service.WfVariableService#delete
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableService", allEntries = true)
    int deleteCache(Object delete);

	/**
     * @see top.cardone.workflow.service.WfVariableService#deleteAll
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableService", allEntries = true)
    int deleteAllCache();

	/**
     * @see top.cardone.workflow.service.WfVariableService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableService", allEntries = true)
    int deleteByIdsCache(Object ids);

	/**
     * @see top.cardone.workflow.service.WfVariableService#deleteList
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

	/**
     * @see top.cardone.workflow.service.WfVariableService#findList
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

	/**
     * @see top.cardone.workflow.service.WfVariableService#findOne
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

	/**
     * @see top.cardone.workflow.service.WfVariableService#insert
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableService", allEntries = true)
    int insertCache(Object insert);

	/**
     * @see top.cardone.workflow.service.WfVariableService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableService", allEntries = true)
    int insertByNotExistsCache(Object insert);

	/**
     * @see top.cardone.workflow.service.WfVariableService#insertList
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

	/**
     * @see top.cardone.workflow.service.WfVariableService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

	/**
     * @see top.cardone.workflow.service.WfVariableService#readList
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

	/**
     * @see top.cardone.workflow.service.WfVariableService#readOne
     */
    @Cacheable(value = "top.cardone.workflow.service.WfVariableService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

	/**
     * @see top.cardone.workflow.service.WfVariableService#save
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableService", allEntries = true)
    Integer saveCache(Object save);

	/**
     * @see top.cardone.workflow.service.WfVariableService#update
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableService", allEntries = true)
    int updateCache(Object update);

	/**
     * @see top.cardone.workflow.service.WfVariableService#updateList
     */
    @CacheEvict(value = "top.cardone.workflow.service.WfVariableService", allEntries = true)
    int[] updateListCache(List<Object> updateList);
}