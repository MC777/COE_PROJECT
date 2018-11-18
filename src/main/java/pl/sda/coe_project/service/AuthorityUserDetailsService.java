package pl.sda.coe_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import pl.sda.coe_project.repository.IUserRepository;

import java.util.Optional;

public class AuthorityUserDetailsService implements UserDetailsService {

    private final IUserRepository userRepository = null;

    @Autowired
    public AuthorityUserDetailsService(IUserRepository userRepository) {
    }
    //public AuthorityUserDetailsService(IUserRepository userRepository) {this.userRepository - userRepository;}
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
        return Optional.ofNullable(userRepository.findByUsername(username)).orElseThrow(
                () -> new UsernameNotFoundException("User not found"));
    }
}
