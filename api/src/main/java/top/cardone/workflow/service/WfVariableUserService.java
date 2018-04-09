package top.cardone.workflow.service;

import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.cache.Caches;
import top.cardone.context.annotation.Event;
import top.cardone.context.annotation.Events;
import top.cardone.context.event.SimpleErrorEvent;
import top.cardone.context.event.SimpleEvent;
import top.cardone.data.service.PageService;

import java.util.Map;

/**
 * 工作流变量与用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.workflow.service.WfVariableUserService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface WfVariableUserService extends PageService {
    /**
     * 查询工作流变量与用户对象
     *
     * @param findOne 工作流变量与用户标识
     * @return 工作流变量与用户对象
     */
    Map<String, Object> findOneByWfVariableUserId(Map<String, Object> findOne);

    /**
     * 查询工作流变量与用户对象
     *
     * @param findOne 工作流变量与用户标识
     * @return 工作流变量与用户对象
     */
    @Cacheable
    default Map<String, Object> findOneByWfVariableUserIdCache(Map<String, Object> findOne) {
        return this.findOneByWfVariableUserId(findOne);
    }
}