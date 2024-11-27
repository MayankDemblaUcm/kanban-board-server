package com.kanbanboard.server.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@EqualsAndHashCode(callSuper = true)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto extends BaseDto{
    private int userId;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String token;
    private String role;

}
