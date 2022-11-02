package uca.ungallocontenis.kenkougymapi.service.KenkouUser;

import java.util.Set;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.IterableUtils;
import org.apache.commons.collections4.Predicate;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.json.JsonMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import uca.ungallocontenis.kenkougymapi.entity.KenkouUser.Progreso;
import uca.ungallocontenis.kenkougymapi.entity.KenkouUser.UsuarioObjetivoActivo.UsuarioObjetivoActivo;
import uca.ungallocontenis.kenkougymapi.repository.KenkouUser.KenkouUserRepository;
import uca.ungallocontenis.kenkougymapi.repository.KenkouUser.ProgresoRepository;

@Service
public class KenkouUserService {

    private static final Logger LOG = org.slf4j.LoggerFactory.getLogger(KenkouUserService.class);

    @Autowired
    private KenkouUserRepository repository;

    @Autowired
    private ProgresoRepository progresoRepository;

    public String obtenerUsuario(String username) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();

        try {
            json = mapper.writeValueAsString(repository.findByUsername(username));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear usuario", e);
        }

        return json;
    }

    public String obtenerObjetivoActual(String username) {
        String json = "[]";
        ObjectMapper mapper = new ObjectMapper();
        UsuarioObjetivoActivo objetivoActivo = IterableUtils.find(repository.getObjetivosByUsernameOrEmail(username, username), new Predicate<UsuarioObjetivoActivo>() {
            @Override
            public boolean evaluate(UsuarioObjetivoActivo object) {
                return object.isActivo();
            }
        });

        try {
            json = mapper.writeValueAsString(objetivoActivo);
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear objetivo", e);
        }

        return json;
    }

    public String insertarProgreso(Progreso progreso) {
        String json = "[]";
        double porcentajeGrasa = 0;
        String sexo = repository.getSexoByUsername(progreso.getUsername());
        double altura = repository.getMeidaAlturaByUsername(progreso.getUsername());
        ObjectMapper mapper = JsonMapper.builder().addModule(new JavaTimeModule()).build();

        // U.S. Navy Method
        if(sexo.equals("M")) 
            porcentajeGrasa = (495.0 / (1.0324 - (0.19077 * Math.log10(progreso.getMedidaCuello() + progreso.getDiametroCintura())) + (0.15456 * Math.log10(altura)))) - 450;
        else 
            porcentajeGrasa = (495.0 / (1.29579 - (0.35004 * Math.log10(progreso.getMedidaCuello() + progreso.getDiametroCaderas() + progreso.getDiametroCintura())) + (0.22100 * Math.log10(altura)))) - 450;

        progreso.setPorcentajeGrasa(porcentajeGrasa);
        try {
            json = mapper.writeValueAsString(progresoRepository.saveAndFlush(progreso));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear progreso", e);
        }
        
        return json;
    }
    
    public String obtenerProgreso(String username) {
        return "";
    }
}
