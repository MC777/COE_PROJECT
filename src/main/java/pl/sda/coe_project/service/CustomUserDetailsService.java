package pl.sda.coe_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import pl.sda.coe_project.model.User;
import pl.sda.coe_project.repository.IUserRepository;
import pl.sda.coe_project.repository.IUserRoleRepository;

import java.util.List;

@Service
public class CustomUserDetailsService implements UserDetailsService {
    private final IUserRepository userRepository;
    private final IUserRoleRepository userRolesRepository;

    @Autowired
    public CustomUserDetailsService(IUserRepository userRepository, IUserRoleRepository userRolesRepository) {
        this.userRepository = userRepository;
        this.userRolesRepository = userRolesRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user=userRepository.findByUserName(username);

        if(null == user){
            throw new UsernameNotFoundException("No user present with username: "+username);
        }else{
            List<String> userRoles=userRolesRepository.findRoleByUserName(username);
            //return new CustomUserDetails(user.getUserName(), user.getPassword(),userRoles);
            return user;
        }
    }
}
