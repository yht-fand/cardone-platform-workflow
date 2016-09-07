package top.cardone.workflow.service.impl;

import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.workflow.dao.WfVariableDao;

/**
 * 工作流变量服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class WfVariableServiceImpl extends PageServiceImpl<WfVariableDao> implements top.cardone.workflow.service.WfVariableService {
}