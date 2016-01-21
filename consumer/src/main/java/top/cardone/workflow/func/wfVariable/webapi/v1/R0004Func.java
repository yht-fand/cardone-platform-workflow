package top.cardone.workflow.func.wfVariable.webapi.v1;

import com.google.common.collect.Maps;
import org.springframework.stereotype.Component;
import top.cardone.workflow.dto.WfVariableDto;
import top.cardone.workflow.service.WfVariableService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 工作流变量 - 查询
 */
@Component("/web-api/v1/configuration/wfVariable/r0004.json")
public class R0004Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        WfVariableDto wfVariableDto = ApplicationContextHolder.getBean(WfVariableService.class).findOne(WfVariableDto.class, map);

        return this.toMap(wfVariableDto);
    }

    private Map<String, Object> toMap(WfVariableDto wfVariableDto) {
        Map<String, Object> map = Maps.newHashMap();

        map.put("beginDate", wfVariableDto.getBeginDate());
        map.put("content", wfVariableDto.getContent());
        map.put("createdByCode", wfVariableDto.getCreatedByCode());
        map.put("createdDate", wfVariableDto.getCreatedDate());
        map.put("dataStateCode", wfVariableDto.getDataStateCode());
        map.put("departmentCode", wfVariableDto.getDepartmentCode());
        map.put("endDate", wfVariableDto.getEndDate());
        map.put("lastModifiedByCode", wfVariableDto.getLastModifiedByCode());
        map.put("lastModifiedDate", wfVariableDto.getLastModifiedDate());
        map.put("orgCode", wfVariableDto.getOrgCode());
        map.put("permissionCodes", wfVariableDto.getPermissionCodes());
        map.put("roleCodes", wfVariableDto.getRoleCodes());
        map.put("stateCode", wfVariableDto.getStateCode());
        map.put("version", wfVariableDto.getVersion());
        map.put("wfId", wfVariableDto.getWfId());
        map.put("wfKey", wfVariableDto.getWfKey());
        map.put("wfVariableId", wfVariableDto.getWfVariableId());

        return map;
    }
}