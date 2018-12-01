package pl.sda.coe_project.assembler;

import org.springframework.stereotype.Component;
import pl.sda.coe_project.model.User;
import pl.sda.coe_project.model.dto.UserDto;

@Component
public class UserAssembler {

    public User fromUserDto(UserDto dtoUser) {
        User user = new User();
        user.setUserName(dtoUser.getUsername());
        user.setPassword(dtoUser.getPassword());
        user.setEnabled(dtoUser.getEnabled());
        return user;
    }

    public UserDto toUserDto(User user) {
        UserDto dto = new UserDto();
        dto.setUsername(user.getUsername());
        dto.setPassword(user.getPassword());
        dto.setEnabled(user.getEnabled());
        return dto;
    }
}
