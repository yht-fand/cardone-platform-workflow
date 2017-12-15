package top.cardone.workflow.dao.impl;

import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.List;
import java.util.Map;

/**
 * 工作流任务处理重试
 *
 * @author yao hai tao
 */
public class WfTaskHandleRetryDaoImpl extends PageDaoImpl implements top.cardone.workflow.dao.WfTaskHandleRetryDao {
    @Override
    public Map<String, Object> findOneByWfTaskHandleRetryId(Map<String, Object> findOne) {
        String findOneSqlFilePath = this.getSqlFilePath("page.find");
		
        return this.findOne(findOneSqlFilePath, findOne);
    }
}