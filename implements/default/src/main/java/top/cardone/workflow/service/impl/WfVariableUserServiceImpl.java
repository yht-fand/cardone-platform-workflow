package top.cardone.workflow.service.impl;

import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.workflow.dao.WfVariableUserDao;

import java.util.List;
import java.util.Map;

/**
 * 工作流变量与用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class WfVariableUserServiceImpl extends PageServiceImpl<WfVariableUserDao> implements top.cardone.workflow.service.WfVariableUserService {
    @Override
    public Map<String, Object> findOneByWfVariableUserId(Map<String, Object> findOne) {
        return this.dao.findOneByWfVariableUserId(findOne);
    }
}