package uca.ungallocontenis.kenkougymapi.config.Authorization;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import uca.ungallocontenis.kenkougymapi.config.KenkouGymApp.KenkouGymAppInfo;

// Will create singleton beans when true
@Configuration(proxyBeanMethods = false)
public class AuthorizationServerConfiguration {
    
    // @Autowired
    // private PasswordEncoder passwordEncoder;

    @Autowired
	private KenkouGymAppInfo clientInfo;

    @Bean
    public PasswordEncoder getPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    @Order(Ordered.HIGHEST_PRECEDENCE) // First bean to initialize
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        /*// Default configuration which will secure all requests
        http.authorizeRequests()
        // Any request sent to the API
        .anyRequest()
        // Should be through an authenticated user
        .authenticated().and()
        // And this will apply for any requests coming from forms in the client
        .formLogin().and()
        // And this will apply for any requests coming from other places in the client
        .httpBasic();*/

        http.authorizeRequests()
        // Requests sent to the API to this specific path should be through an authenticated user
        .antMatchers("/kenkou-user")
        .authenticated().and()
        .formLogin().and()
        .httpBasic();

        return http.build();
    }
}
