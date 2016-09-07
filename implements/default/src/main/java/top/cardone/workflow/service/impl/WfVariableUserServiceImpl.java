package top.cardone.workflow.service.impl;

import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.workflow.dao.WfVariableUserDao;

/**
 * 工作流变量与用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class WfVariableUserServiceImpl extends PageServiceImpl<WfVariableUserDao> implements top.cardone.workflow.service.WfVariableUserService {
}