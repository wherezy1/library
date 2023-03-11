package com.where.library.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/30/20:54
 * @Description:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginDto implements Serializable {
    private static final long serialVersionUID = 1L;
    @NotNull
    private String username;
    @NotNull
    private String password;
}
