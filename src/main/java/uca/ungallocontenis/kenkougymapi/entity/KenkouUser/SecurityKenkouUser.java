package uca.ungallocontenis.kenkougymapi.entity.KenkouUser;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class SecurityKenkouUser implements UserDetails {

    private KenkouUser kenkouUser;

    public SecurityKenkouUser(KenkouUser kenkouUser) {
        this.kenkouUser = kenkouUser;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return kenkouUser.getUsersRoles().stream().map(role -> {
            return new SimpleGrantedAuthority(role.getRoleName());
        }).collect(Collectors.toList());
    }

    @Override
    public String getPassword() {
        return kenkouUser.getPassword();
    }

    @Override
    public String getUsername() {
        return kenkouUser.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        // TODO Auto-generated method stub
        return !kenkouUser.isLocked();
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return !this.kenkouUser.isCredentialsExpired();
    }

    @Override
    public boolean isEnabled() {
        return kenkouUser.isEnabled();
    }

    public boolean isKenkouUserNull() {
        return this.kenkouUser == null;
    }
}
