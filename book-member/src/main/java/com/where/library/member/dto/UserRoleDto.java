package com.where.library.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/12/09/18:21
 * @Description:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserRoleDto {
    private Long userId;
    private List<Long> roleId;
}
