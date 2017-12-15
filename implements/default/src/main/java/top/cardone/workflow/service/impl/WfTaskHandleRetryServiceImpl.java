package top.cardone.workflow.service.impl;

import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.workflow.dao.WfTaskHandleRetryDao;

import java.util.List;
import java.util.Map;

/**
 * 工作流任务处理重试服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class WfTaskHandleRetryServiceImpl extends PageServiceImpl<WfTaskHandleRetryDao> implements top.cardone.workflow.service.WfTaskHandleRetryService {
    @Override
    public Map<String, Object> findOneByWfTaskHandleRetryId(Map<String, Object> findOne) {
        return this.dao.findOneByWfTaskHandleRetryId(findOne);
    }
}