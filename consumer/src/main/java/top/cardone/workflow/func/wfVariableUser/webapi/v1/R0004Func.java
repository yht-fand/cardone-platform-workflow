package top.cardone.workflow.func.wfVariableUser.webapi.v1;

import com.google.common.collect.Maps;
import org.springframework.stereotype.Component;
import top.cardone.workflow.dto.WfVariableUserDto;
import top.cardone.workflow.service.WfVariableUserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 工作流变量与用户 - 查询
 */
@Component("/web-api/v1/configuration/wfVariableUser/r0004.json")
public class R0004Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        WfVariableUserDto wfVariableUserDto = ApplicationContextHolder.getBean(WfVariableUserService.class).findOne(WfVariableUserDto.class, map);

        return this.toMap(wfVariableUserDto);
    }

    private Map<String, Object> toMap(WfVariableUserDto wfVariableUserDto) {
        Map<String, Object> map = Maps.newHashMap();

        map.put("beginDate", wfVariableUserDto.getBeginDate());
        map.put("content", wfVariableUserDto.getContent());
        map.put("createdByCode", wfVariableUserDto.getCreatedByCode());
        map.put("createdDate", wfVariableUserDto.getCreatedDate());
        map.put("dataStateCode", wfVariableUserDto.getDataStateCode());
        map.put("departmentCode", wfVariableUserDto.getDepartmentCode());
        map.put("endDate", wfVariableUserDto.getEndDate());
        map.put("lastModifiedByCode", wfVariableUserDto.getLastModifiedByCode());
        map.put("lastModifiedDate", wfVariableUserDto.getLastModifiedDate());
        map.put("orgCode", wfVariableUserDto.getOrgCode());
        map.put("permissionCodes", wfVariableUserDto.getPermissionCodes());
        map.put("roleCodes", wfVariableUserDto.getRoleCodes());
        map.put("siteCode", wfVariableUserDto.getSiteCode());
        map.put("stateCode", wfVariableUserDto.getStateCode());
        map.put("systemInfoCode", wfVariableUserDto.getSystemInfoCode());
        map.put("userCode", wfVariableUserDto.getUserCode());
        map.put("version", wfVariableUserDto.getVersion());
        map.put("wfId", wfVariableUserDto.getWfId());
        map.put("wfKey", wfVariableUserDto.getWfKey());
        map.put("wfVariableUserId", wfVariableUserDto.getWfVariableUserId());

        return map;
    }
}