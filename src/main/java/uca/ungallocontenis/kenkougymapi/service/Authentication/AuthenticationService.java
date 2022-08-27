package uca.ungallocontenis.kenkougymapi.service.Authentication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsPasswordService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.stereotype.Service;

import uca.ungallocontenis.kenkougymapi.entity.KenkouUser.KenkouUser;
import uca.ungallocontenis.kenkougymapi.entity.KenkouUser.SecurityKenkouUser;
import uca.ungallocontenis.kenkougymapi.repository.KenkouUser.KenkouUserRepository;

@Service
public class AuthenticationService implements UserDetailsManager, UserDetailsPasswordService {
    
    @Autowired
    private KenkouUserRepository repository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        KenkouUser kenkouUser = repository.findByUsername(username);

        if(kenkouUser == null)
            throw new UsernameNotFoundException("Username " + username + "not found!");

        return new SecurityKenkouUser(kenkouUser);
    }

    @Override
    public void createUser(UserDetails user) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void updateUser(UserDetails user) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void deleteUser(String username) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void changePassword(String oldPassword, String newPassword) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public boolean userExists(String username) {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public UserDetails updatePassword(UserDetails user, String newPassword) {
        // TODO Auto-generated method stub
        return null;
    }
}
