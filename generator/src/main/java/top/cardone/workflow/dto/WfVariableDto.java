package top.cardone.workflow.dto;

import top.cardone.workflow.po.WfVariable;

/**
 * 工作流变量
 *
 * @author yao hai tao
 */
@lombok.ToString(callSuper = true)
public class WfVariableDto extends WfVariable {
    /**
     * 版本号
     */
    private static final long serialVersionUID = 848219389313525789L;
}