package pl.coderslab.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity(debug = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private static String REALM = "MY_TEST_REALM";






    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()
        .authorizeRequests()
                 .antMatchers("/").permitAll()
                // .antMatchers("/**").permitAll()
                 .antMatchers("/**/js/**").permitAll()
                 .antMatchers("/**/w3images/**").permitAll()
                 .antMatchers("/**/secured/**").access("hasRole('ADMIN')")
                .antMatchers("/**/admin/**").access("hasRole('ADMIN')")
                // .antMatchers("/**/login/**").access("hasRole('ADMIN')")
                /*.anyRequest().authenticated()*/
                .and()
                .formLogin()
                    .loginPage("/login")

                .failureHandler(getFailureHandler())
                .and().httpBasic().realmName(REALM).authenticationEntryPoint(getBasicAuthEntryPoint())
                .and().sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

        http.logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
    }
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    @Bean
    public CustomBasicAuthenticationEntryPoint getBasicAuthEntryPoint() {
        return new CustomBasicAuthenticationEntryPoint();
    }

    @Bean
    public AccessDeniedHandler accessDeniedHandler() {
        return new CustomAccessDeniedHandler();
    }

    @Bean
    public AuthenticationFailureHandler getFailureHandler() {
        return new CustomAuthFailureHandler();
    }


    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .inMemoryAuthentication()
                .withUser("user").password("password").roles("ADMIN");

    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.debug(true);
    }
/*    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers(HttpMethod.OPTIONS, "/**");
    }*/
}

// .antMatchers("/**/secured/**").access("hasRole('ADMIN')")
  //       .antMatchers("/**/admin/**").access("hasRole('ADMIN')")