package top.cardone.workflow.dao.impl;

import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.List;
import java.util.Map;

/**
 * 工作流变量与用户
 *
 * @author yao hai tao
 */
public class WfVariableUserDaoImpl extends PageDaoImpl implements top.cardone.workflow.dao.WfVariableUserDao {
    @Override
    public Map<String, Object> findOneByWfVariableUserId(Map<String, Object> findOne) {
        String findOneSqlFilePath = this.getSqlFilePath("page.find");
		
        return this.findOne(findOneSqlFilePath, findOne);
    }
}