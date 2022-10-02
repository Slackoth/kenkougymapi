package uca.ungallocontenis.kenkougymapi.controller.Nutricion;

import java.util.List;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import uca.ungallocontenis.kenkougymapi.repository.Nutricion.EstiloAlimenticioRepository;
import uca.ungallocontenis.kenkougymapi.repository.Nutricion.IngredienteRepository;
import uca.ungallocontenis.kenkougymapi.repository.Nutricion.PlanAlimenticioRepository;
import uca.ungallocontenis.kenkougymapi.repository.Nutricion.RecetaRepository;
import uca.ungallocontenis.kenkougymapi.repository.Nutricion.TiempoComidaRepository;

@RestController
@RequestMapping("/nutricion")
public class NutricionController {

    @Autowired
    private RecetaRepository recetaRepository;
    @Autowired
    private TiempoComidaRepository tiempoRepository;
    @Autowired
    private PlanAlimenticioRepository planRepository;
    @Autowired
    private IngredienteRepository ingredienteRepository;
    @Autowired
    private EstiloAlimenticioRepository estiloRepository;

    private static final Logger LOG = org.slf4j.LoggerFactory.getLogger(NutricionController.class);

    /* Recetas */

    @GetMapping("/recetas")
    public String todasLasRecetas() {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findAll());
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }
    
    @GetMapping("/recetaPorNombre")
    public String recetaPorNombre(@RequestParam String nombre) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findByNombre(nombre));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }
    
    @GetMapping("/recetasDondeNombrePuedeSer")
    public String recetasPorNombre(@RequestParam String nombre) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findByNombreIsContainingIgnoringCase(nombre));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }

    @GetMapping("/recetaPorObjetivo")
    public String recetaPorObjetivo(@RequestParam int objetivoId) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findByObjetivo_Id(objetivoId));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }

    @GetMapping("/recetaPorObjetivos")
    public String recetaPorObjetivos(@RequestParam List<Integer> objetivosId) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findByObjetivo_IdIsIn(objetivosId));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }

    @GetMapping("/recetaPorTiempoComida")
    public String recetaPorTiempoComida(@RequestParam int tiempoComidaId) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findByTiempoComida_Id(tiempoComidaId));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }

    @GetMapping("/recetaPorTiempoComidas")
    public String recetaPorTiempoComidas(@RequestParam List<Integer> tiempoComidasId) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findByTiempoComida_IdIsIn(tiempoComidasId));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }

    @GetMapping("/recetaPorIngrediente")
    public String recetaPorIngrediente(@RequestParam int ingredienteId) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findByCantidadDeIngrediente_Ingrediente_Id(ingredienteId));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }

    @GetMapping("/recetaPorIngredientes")
    public String recetaPorIngredientes(@RequestParam List<Integer> ingredientesId) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findByCantidadDeIngrediente_Ingrediente_IdIsIn(ingredientesId));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }

    @GetMapping("/recetaPorObjetivosYTiempoComidas")
    public String recetaPorObjetivosYTiempoComidas(@RequestParam List<Integer> objetivosId, @RequestParam List<Integer> tiempoComidasId) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findByObjetivo_IdIsInAndTiempoComida_IdIsIn(objetivosId, tiempoComidasId));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }

    @GetMapping("/recetaPorObjetivosEIngredientes")
    public String recetaPorObjetivosEIngredientes(@RequestParam List<Integer> objetivosId, @RequestParam List<Integer> ingredientesId) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findByObjetivo_IdIsInAndCantidadDeIngrediente_Ingrediente_IdIsIn(objetivosId, ingredientesId));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }

    @GetMapping("/recetaPorTiempoComidasEIngredientes")
    public String recetaPorTiempoComidasEIngredientes(@RequestParam List<Integer> tiempoComidasId, @RequestParam List<Integer> ingredientesId) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(recetaRepository.findByTiempoComida_IdIsInAndCantidadDeIngrediente_Ingrediente_IdIsIn(tiempoComidasId, ingredientesId));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }
    
    @GetMapping("/recetaPorObjetivosYTiempoComidasEIngredientes")
    public String recetaPorObjetivosYTiempoComidasEIngredientes(@RequestParam List<Integer> objetivosId, 
        @RequestParam List<Integer> tiempoComidasId, @RequestParam List<Integer> ingredientesId) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(
                recetaRepository.findByObjetivo_IdIsInAndTiempoComida_IdIsInAndCantidadDeIngrediente_Ingrediente_IdIsIn(objetivosId, tiempoComidasId, tiempoComidasId)
            );
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear recetas", e);
        }

        return json;
    }

    @GetMapping("/ingredientes")
    public String todosLosIngredientes() {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(ingredienteRepository.findAll());
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear ingredientes", e);
        }

        return json;
    }

    @GetMapping("/tiemposDeComida")
    public String todosLosTiemposDeComida() {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(tiempoRepository.findAll());
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear ingredientes", e);
        }

        return json;
    }

    @GetMapping("/planesAlimenticios")
    public String todosLosPlanesAlimenticios() {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(planRepository.findAll());
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear ingredientes", e);
        }

        return json;
    }

    @GetMapping("/estilosAlimenticios")
    public String todosLosEstilosAlimenticios() {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            json = mapper.writeValueAsString(estiloRepository.findAll());
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear ingredientes", e);
        }

        return json;
    }
}
