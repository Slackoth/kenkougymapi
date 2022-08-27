package uca.ungallocontenis.kenkougymapi.config.Security.AuthenticationProviders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import uca.ungallocontenis.kenkougymapi.entity.KenkouUser.SecurityKenkouUser;
import uca.ungallocontenis.kenkougymapi.repository.KenkouUser.KenkouUserRepository;

@Component
public class UsernamePasswordAuthenticationProvider implements AuthenticationProvider {

    @Autowired
    private KenkouUserRepository repository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String username = authentication.getName();
        String password = authentication.getCredentials().toString();
        SecurityKenkouUser kenkouUser = new SecurityKenkouUser(repository.findByUsername(username));

        if(!kenkouUser.isKenkouUserNull()) {
            if(passwordEncoder.matches(password, kenkouUser.getPassword())) 
                return new UsernamePasswordAuthenticationToken(username, password, kenkouUser.getAuthorities());
            else
                throw new BadCredentialsException("Invalid password!");
        }
        else 
            throw new BadCredentialsException("Username " + username + "not found!");
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
    
}
