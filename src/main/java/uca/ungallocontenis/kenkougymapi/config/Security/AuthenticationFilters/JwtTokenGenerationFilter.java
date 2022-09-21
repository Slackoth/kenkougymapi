package uca.ungallocontenis.kenkougymapi.config.Security.AuthenticationFilters;

import java.io.IOException;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.crypto.SecretKey;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import uca.ungallocontenis.kenkougymapi.config.KenkouGymApp.KenkouGymAppInfo;


public class JwtTokenGenerationFilter extends OncePerRequestFilter {

    private static final Logger LOG = org.slf4j.LoggerFactory.getLogger(JwtTokenGenerationFilter.class);

    @Autowired
	private KenkouGymAppInfo clientInfo;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        
        if(authentication != null) {
            SecretKey key = Keys.secretKeyFor(SignatureAlgorithm.HS256);
            String jwt = Jwts.builder().setIssuer(clientInfo.getName()).setSubject("JWT Token")
                .claim("username", authentication.getName())
                .claim("authorities", getAuthorities(authentication.getAuthorities()))
                .setIssuedAt(new Date())
                .setExpiration(new Date(new Date().getTime() + 1800000)) // 30 min
                .signWith(key).compact(); 
            
            LOG.info(jwt);
            response.setHeader("Authorization", jwt);
        }
        
        filterChain.doFilter(request, response);
    }

    @Override
    protected boolean shouldNotFilter(HttpServletRequest request) throws ServletException {
        // When user is not logging in, then we will generate the JWT
        return !request.getServletPath().equals("/authentication/authenticate");
    }

    private String getAuthorities(Collection<? extends GrantedAuthority> authorities) {
        Set<String> authSet = new HashSet<>();

        authorities.forEach(authority -> {
            authSet.add(authority.getAuthority());
        });

        return String.join(",", authSet);
    }
}
