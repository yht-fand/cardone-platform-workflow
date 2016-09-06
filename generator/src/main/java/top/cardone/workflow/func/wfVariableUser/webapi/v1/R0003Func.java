package top.cardone.workflow.func.wfVariableUser.webapi.vi;

import org.springframework.stereotype.Component;
import top.cardone.core.util.func.Func1;

import top.cardone.workflow.dto.WfVariableUserDto;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;

import java.util.List;
import java.util.Map;

/**
 * 工作流变量与用户 - 查询分页
 */
@Component("/web-api/v1/workflow/wfVariableUser/r0003.json")
public class R0003Func implements Func1<Map<String, Object>, Map<String, Object>> {
    @Override
    public Map<String, Object> func(Map<String, Object> map) {
        return null;
    }

    private List<Map<String, Object>> toMapList(List<WfVariableUserDto> wfVariableUserDtoList) {
        List<Map<String, Object>> mapList = Lists.newArrayList();

        for (WfVariableUserDto wfVariableUserDto : wfVariableUserDtoList) {
            mapList.add(this.toMap(wfVariableUserDto));
        }

        return mapList;
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
        map.put("stateCode", wfVariableUserDto.getStateCode());
        map.put("userCode", wfVariableUserDto.getUserCode());
        map.put("version", wfVariableUserDto.getVersion());
        map.put("wfId", wfVariableUserDto.getWfId());
        map.put("wfKey", wfVariableUserDto.getWfKey());
        map.put("wfVariableUserId", wfVariableUserDto.getWfVariableUserId());

        return map;
    }
}
