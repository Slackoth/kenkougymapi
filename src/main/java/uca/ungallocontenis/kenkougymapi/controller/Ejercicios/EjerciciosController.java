package uca.ungallocontenis.kenkougymapi.controller.Ejercicios;

import java.util.List;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import uca.ungallocontenis.kenkougymapi.repository.Ejercicios.TipoRutinaRepository;

@RestController
@RequestMapping("/ejercicios")
public class EjerciciosController {

    @Autowired
    private TipoRutinaRepository tipoRutinaRepository;
    
    private static final Logger LOG = org.slf4j.LoggerFactory.getLogger(EjerciciosController.class);

    /* Tipo Rutina */
    @GetMapping("/tipoRutinaPorNombre")
    public String tipoRutinaPorNombre(@RequestParam String nombre) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(tipoRutinaRepository.findByNombre(nombre));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear Tipo de Rutina", e);
        }

        return json;
    }

    @GetMapping("/tipoRutinaPorNombreEn")
    public String tipoRutinaPorNombreEn(@RequestParam String nombre) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(tipoRutinaRepository.findByNombreIsContainingIgnoringCase(nombre));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear Tipos de Rutinas", e);
        }

        return json;
    }

    @GetMapping("/tipoRutinaPorId")
    public String tipoRutinaPorId(@RequestParam Integer id) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(tipoRutinaRepository.findById(id));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear Tipo de Rutina por ID", e);
        }

        return json;
    }

    /*
    @GetMapping("/tipoRutinaPorIdEn")
    public String tipoRutinaPorIdEn(@RequestParam List<Integer> id) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(tipoRutinaRepository.findByIdIsIn(id));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear Tipo de Rutina por ID", e);
        }

        return json;
    }
    */
}

