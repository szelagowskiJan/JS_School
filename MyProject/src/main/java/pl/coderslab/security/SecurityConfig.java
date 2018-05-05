package pl.coderslab.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

  @Override
  protected void configure(HttpSecurity http) throws Exception {
    http.authorizeRequests()
        .antMatchers("/").permitAll()
//        .antMatchers("/**").permitAll()
//        .antMatchers("/**/js/**").permitAll()
        .antMatchers("/**/w3images/**").permitAll()
        .antMatchers("/**/secured/**").access("hasRole('USER')")
        .antMatchers("/**/admin/**").access("hasRole('ADMIN')")
        .and()
        .formLogin()
        .loginPage("/login")
        .failureUrl("/login-error");

    http.logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
  }

  @Autowired
  public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
    auth
        .inMemoryAuthentication()
        .withUser("user").password("password").roles("USER");
  }

}