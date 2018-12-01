package pl.sda.coe_project.model.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserInfoDto {

    private String name;
    private String surname;
    private String emailAddress;
    private Long pesel;
    private String phoneNumber;
    private String address;
    private String postalCode;
    private String city;
    private String citizenship;

}
