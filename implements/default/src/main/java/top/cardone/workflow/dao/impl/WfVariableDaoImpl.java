package top.cardone.workflow.dao.impl;

import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.Map;

/**
 * 工作流变量
 *
 * @author yao hai tao
 */
public class WfVariableDaoImpl extends PageDaoImpl implements top.cardone.workflow.dao.WfVariableDao {
    @Override
    public Map<String, Object> findOneByWfVariableId(Map<String, Object> findOne) {
        String findOneSqlFilePath = this.getSqlFilePath("page.find");

        return this.findOne(findOneSqlFilePath, findOne);
    }
}