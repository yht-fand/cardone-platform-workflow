package top.cardone.workflow.dao;

import top.cardone.data.dao.PageDao;

import java.util.Map;

/**
 * 工作流变量与用户
 *
 * @author yao hai tao
 */
public interface WfVariableUserDao extends PageDao {
    /**
     * 查询工作流变量与用户对象
     *
     * @param findOne 工作流变量与用户标识
     * @return 工作流变量与用户对象
     */
    Map<String, Object> findOneByWfVariableUserId(Map<String, Object> findOne);
}