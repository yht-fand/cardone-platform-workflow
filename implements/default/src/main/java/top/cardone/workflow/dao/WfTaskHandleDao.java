package top.cardone.workflow.dao;

import top.cardone.data.dao.PageDao;

import java.util.Map;

/**
 * 工作流任务处理
 *
 * @author yao hai tao
 */
public interface WfTaskHandleDao extends PageDao {
    /**
     * 查询工作流任务处理对象
     *
     * @param findOne 工作流任务处理标识
     * @return 工作流任务处理对象
     */
    Map<String, Object> findOneByWfTaskHandleId(Map<String, Object> findOne);
}