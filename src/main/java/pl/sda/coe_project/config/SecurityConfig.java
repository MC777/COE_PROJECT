package pl.sda.coe_project.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.firewall.StrictHttpFirewall;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, proxyTargetClass = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/", "/css/**", "/js/**", "/resources/**","/vendor/**", "/exchange", "/registerForm", "/register", "/loginForm", "/contact", "/gold", "/cryptocurrency").permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/loginForm")
                .permitAll()
                .and()
                .logout()
                .logoutUrl("/myLogout")
                .logoutSuccessUrl("/")
                .permitAll();

        http.csrf().disable();

    }

    public void configure(WebSecurity web) throws Exception {
        web.httpFirewall(allowUrlEncodedSlashHttpFirewall());

        web.ignoring().antMatchers("/resources/**");
        web.ignoring().antMatchers("/webjars/**");
        web.ignoring().antMatchers("/webapp/**");
    }

    @Bean
    public HttpFirewall allowUrlEncodedSlashHttpFirewall() {
        StrictHttpFirewall firewall = new StrictHttpFirewall();
        firewall.setAllowUrlEncodedSlash(true);
        return firewall;
    }
}
