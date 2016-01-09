package top.cardone.workflow.service.impl;

import top.cardone.workflow.dao.WfVariableUserDao;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;

/**
 * 工作流变量与用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class WfVariableUserServiceImpl extends PageServiceImpl<WfVariableUserDao> implements top.cardone.workflow.service.WfVariableUserService {
}