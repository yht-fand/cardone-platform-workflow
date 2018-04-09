package top.cardone.workflow.dao.impl;

import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.Map;

/**
 * 工作流任务处理
 *
 * @author yao hai tao
 */
public class WfTaskHandleDaoImpl extends PageDaoImpl implements top.cardone.workflow.dao.WfTaskHandleDao {
    @Override
    public Map<String, Object> findOneByWfTaskHandleId(Map<String, Object> findOne) {
        String findOneSqlFilePath = this.getSqlFilePath("page.find");

        return this.findOne(findOneSqlFilePath, findOne);
    }
}