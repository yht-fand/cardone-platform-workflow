package top.cardone.workflow.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
import java.util.Map;

/**
 * 工作流变量
 *
 * @author yao hai tao
 */
public interface WfVariableDao extends PageDao {
    /**
     * 查询工作流变量对象
     *
     * @param findOne 工作流变量标识
     * @return 工作流变量对象
     */
    Map<String, Object> findOneByWfVariableId(Map<String, Object> findOne);
}