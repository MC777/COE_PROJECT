package pl.sda.coe_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import pl.sda.coe_project.model.User;
import pl.sda.coe_project.model.UserRole;
import pl.sda.coe_project.repository.IUserRepository;
import pl.sda.coe_project.repository.IUserRoleRepository;

@Service
public class UserService {

    private static final String DEFAUL_ROLE ="ROLE_USER";

    private final IUserRepository userRepository;
    private final IUserRoleRepository roleRepository;
    private final PasswordEncoder passwordEncoder;

    @Autowired
    public UserService(IUserRepository userRepository, IUserRoleRepository roleRepository,
        PasswordEncoder passwordEncoder){
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public void addUser(User user){
        UserRole defaultRole = roleRepository.findByRole(DEFAUL_ROLE);
        user.getUserRoles().add(defaultRole);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepository.save(user);
    }
}
