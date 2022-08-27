package uca.ungallocontenis.kenkougymapi.controller.KenkouUser;

import java.security.Principal;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import uca.ungallocontenis.kenkougymapi.service.KenkouUser.KenkouUserService;

@RestController
@RequestMapping("/user")
public class KenkouUserController {

    @Autowired
    private KenkouUserService service;

    private static final Logger LOG = org.slf4j.LoggerFactory.getLogger(KenkouUserController.class);
    
    @GetMapping("/details")
    public String getUserDetails(String username) {
        return service.getUserDetails(username);
    }
}