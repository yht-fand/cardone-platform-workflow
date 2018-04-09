package top.cardone.workflow.service.impl;

import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.workflow.dao.WfTaskHandleDao;

import java.util.Map;

/**
 * 工作流任务处理服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class WfTaskHandleServiceImpl extends PageServiceImpl<WfTaskHandleDao> implements top.cardone.workflow.service.WfTaskHandleService {
    @Override
    public Map<String, Object> findOneByWfTaskHandleId(Map<String, Object> findOne) {
        return this.dao.findOneByWfTaskHandleId(findOne);
    }
}