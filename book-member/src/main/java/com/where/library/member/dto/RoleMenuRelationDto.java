package com.where.library.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/12/09/10:58
 * @Description:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RoleMenuRelationDto {
    private Long roleId;
    private Long[] menuIdList;
}
