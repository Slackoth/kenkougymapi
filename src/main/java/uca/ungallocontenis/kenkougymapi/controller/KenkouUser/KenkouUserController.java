package uca.ungallocontenis.kenkougymapi.controller.KenkouUser;

import org.apache.commons.collections4.IterableUtils;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import uca.ungallocontenis.kenkougymapi.entity.KenkouUser.Progreso;
import uca.ungallocontenis.kenkougymapi.service.KenkouUser.KenkouUserService;

@RestController
@RequestMapping("/usuario")
public class KenkouUserController {

    @Autowired
    private KenkouUserService service;

    private static final Logger LOG = org.slf4j.LoggerFactory.getLogger(KenkouUserController.class);

    @GetMapping("/obtenerUsuario")
    public String obtenerUsuario(String username) {
        return service.obtenerUsuario(username); 
    }

    @GetMapping("/obtenerObjetivoActual")
    public String obtenerObjetivoActual(String username) {
        return service.obtenerObjetivoActual(username);
    }
    
    @PostMapping(path = "/insertarProgreso", consumes = {MediaType.APPLICATION_JSON_VALUE})
    public String insertarProgreso(@RequestBody Progreso progreso) {
        return service.insertarProgreso(progreso);
    }
    
    @GetMapping("/obtenerProgreso")
    public String obtenerProgreso(String username) {
        return "";
    }
}