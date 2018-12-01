package pl.sda.coe_project.model.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserDto extends UserInfoDto{

    private String username;
    private String password;
    private int enabled;

}
