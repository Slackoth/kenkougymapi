package uca.ungallocontenis.kenkougymapi.service.KenkouUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import uca.ungallocontenis.kenkougymapi.entity.KenkouUser.KenkouUser;
import uca.ungallocontenis.kenkougymapi.repository.KenkouUser.KenkouUserRepository;

@Service
public class KenkouUserService {

    @Autowired
    private KenkouUserRepository repository;

    public String getUserDetails(String username) {
        KenkouUser kenkouUser = repository.findByUsername(username);

        if(kenkouUser == null)
            return "User not found!";

        return kenkouUser.toString();
    }
}
