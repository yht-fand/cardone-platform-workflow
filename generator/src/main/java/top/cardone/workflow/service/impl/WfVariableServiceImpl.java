package top.cardone.workflow.service.impl;

import top.cardone.workflow.dao.WfVariableDao;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.SimpleDefaultService;

/**
 * 工作流变量服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class WfVariableServiceImpl extends SimpleDefaultService<WfVariableDao> implements top.cardone.workflow.service.WfVariableService {
}