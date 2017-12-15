package top.cardone.workflow.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
import java.util.Map;

/**
 * 工作流任务处理重试
 *
 * @author yao hai tao
 */
public interface WfTaskHandleRetryDao extends PageDao {
    /**
     * 查询工作流任务处理重试对象
     *
     * @param findOne 工作流任务处理重试标识
     * @return 工作流任务处理重试对象
     */
    Map<String, Object> findOneByWfTaskHandleRetryId(Map<String, Object> findOne);
}