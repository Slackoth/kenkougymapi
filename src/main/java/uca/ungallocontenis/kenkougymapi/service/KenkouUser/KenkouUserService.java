package uca.ungallocontenis.kenkougymapi.service.KenkouUser;

import java.security.Principal;

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
public class KenkouUserService implements UserDetailsManager, UserDetailsPasswordService /*UserDetailsService*/ {

    @Autowired
    private KenkouUserRepository repository;

    /* SPRING SECURITY METHODS */

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
        KenkouUser kenkouUser = repository.findByUsername(username);

        if(kenkouUser == null)
            return false;
        
        return true;
    }

    @Override
    public UserDetails updatePassword(UserDetails user, String newPassword) {
        // TODO Auto-generated method stub
        return null;
    }

    /* APPLICATION METHODS */
    public String getUserDetails(String username) {
        KenkouUser kenkouUser = repository.findByUsername(username);

        if(kenkouUser == null)
            return "User not found!";

        return kenkouUser.toString();
    }
}
