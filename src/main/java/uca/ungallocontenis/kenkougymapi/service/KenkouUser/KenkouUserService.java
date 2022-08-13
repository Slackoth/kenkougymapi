package uca.ungallocontenis.kenkougymapi.service.KenkouUser;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import uca.ungallocontenis.kenkougymapi.entity.KenkouUser.KenkouRole;
import uca.ungallocontenis.kenkougymapi.entity.KenkouUser.KenkouUser;
import uca.ungallocontenis.kenkougymapi.repository.KenkouUser.KenkouUserRepository;

@Service
@Transactional
public class KenkouUserService implements UserDetailsService {

    @Autowired
    private KenkouUserRepository userDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        KenkouUser user = userDao.findByUsername(username);

        if(user == null)
            throw new UsernameNotFoundException("Username " + username + "not found");

        return new User(user.getUsername(), user.getPassword(), user.isEnabled(), true, true, true, usersRolesToAuthorities(user.getUsersRoles()));
    }

    private List<GrantedAuthority> usersRolesToAuthorities(List<KenkouRole> roles) {
        return roles.stream().map(role -> new SimpleGrantedAuthority(role.getRoleName())).collect(Collectors.toList());
    }
    
}
