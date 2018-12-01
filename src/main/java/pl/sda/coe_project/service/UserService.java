package pl.sda.coe_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import pl.sda.coe_project.assembler.UserAssembler;
import pl.sda.coe_project.assembler.UserInfoAssembler;
import pl.sda.coe_project.model.User;
import pl.sda.coe_project.model.UserInfo;
import pl.sda.coe_project.model.UserRole;
import pl.sda.coe_project.model.dto.UserDto;
import pl.sda.coe_project.repository.IUserRepository;
import pl.sda.coe_project.repository.IUserRoleRepository;

@Service
public class UserService {

    private static final String DEFAUL_ROLE = "ROLE_USER";

    private final IUserRepository userRepository;
    private final IUserRoleRepository roleRepository;
    private final PasswordEncoder passwordEncoder;

    private final UserAssembler userAssembler;
    private final UserInfoAssembler userInfoAssembler;

    @Autowired
    public UserService(IUserRepository userRepository, IUserRoleRepository roleRepository,
                       PasswordEncoder passwordEncoder, UserAssembler userAssembler, UserInfoAssembler userInfoAssembler) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
        this.userAssembler = userAssembler;
        this.userInfoAssembler = userInfoAssembler;
    }

    public void addUser(UserDto userDto) {
        User user = userAssembler.fromUserDto(userDto);
        UserInfo userInfo = userInfoAssembler.fromUserInfoDto(userDto);

        UserRole defaultRole = roleRepository.findByRole(DEFAUL_ROLE);
        user.getUserRoles().add(defaultRole);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setUserInfo(userInfo);

        userRepository.save(user);
    }
}
