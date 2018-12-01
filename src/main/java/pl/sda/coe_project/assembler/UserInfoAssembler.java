package pl.sda.coe_project.assembler;


import org.springframework.stereotype.Component;
import pl.sda.coe_project.model.UserInfo;
import pl.sda.coe_project.model.dto.UserDto;
import pl.sda.coe_project.model.dto.UserInfoDto;

@Component
public class UserInfoAssembler {

    public UserInfo fromUserInfoDto (UserInfoDto dtoUserInfo) {
        UserInfo userInfo = new UserInfo();
        userInfo.setName(dtoUserInfo.getName());
        userInfo.setSurname(dtoUserInfo.getSurname());
        userInfo.setEmail(dtoUserInfo.getEmailAddress());
        userInfo.setPesel(dtoUserInfo.getPesel());
        userInfo.setPhone(dtoUserInfo.getPhoneNumber());
        userInfo.setAddress(dtoUserInfo.getAddress());
        userInfo.setPostCode(dtoUserInfo.getPostalCode());
        userInfo.setCity(dtoUserInfo.getCity());
        userInfo.setCitizenship(dtoUserInfo.getCitizenship());
        return userInfo;
    }

    public UserInfoDto toUserInfoDto(UserInfo userInfo) {
        UserInfoDto dtoUserInfo = new UserDto();
        dtoUserInfo.setName(userInfo.getName());
        dtoUserInfo.setSurname(userInfo.getSurname());
        dtoUserInfo.setEmailAddress(userInfo.getEmail());
        dtoUserInfo.setPesel(userInfo.getPesel());
        dtoUserInfo.setPhoneNumber(userInfo.getPhone());
        dtoUserInfo.setAddress(userInfo.getAddress());
        dtoUserInfo.setPostalCode(userInfo.getPostCode());
        dtoUserInfo.setCity(userInfo.getCity());
        dtoUserInfo.setCitizenship(userInfo.getCitizenship());
        return dtoUserInfo;
    }
}
