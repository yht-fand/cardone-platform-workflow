package top.cardone.workflow.service.impl;

import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.workflow.dao.WfVariableDao;

import java.util.List;
import java.util.Map;

/**
 * 工作流变量服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class WfVariableServiceImpl extends PageServiceImpl<WfVariableDao> implements top.cardone.workflow.service.WfVariableService {
    @Override
    public Map<String, Object> findOneByWfVariableId(Map<String, Object> findOne) {
        return this.dao.findOneByWfVariableId(findOne);
    }
}