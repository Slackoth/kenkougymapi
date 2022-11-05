package uca.ungallocontenis.kenkougymapi.service.KenkouUser;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import uca.ungallocontenis.kenkougymapi.utils.KenkouUtils;

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
            porcentajeGrasa = (495.0 / (1.0324 - (0.19077 * Math.log10(progreso.getMedidaCuello() + progreso.getDiametroCintura())) + (0.15456 * Math.log10(altura)))) - 450.0;
        else 
            porcentajeGrasa = (495.0 / (1.29579 - (0.35004 * Math.log10(progreso.getMedidaCuello() + progreso.getDiametroCaderas() + progreso.getDiametroCintura())) + (0.22100 * Math.log10(altura)))) - 450.0;

        progreso.setPorcentajeGrasa(porcentajeGrasa);
        try {
            json = mapper.writeValueAsString(progresoRepository.saveAndFlush(progreso));
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear progreso", e);
        }
        
        return json;
    }
    
    /* dd/MM/yyyy */
    public String obtenerProgreso(String username, String fechaInicial, String fechaActual) {
        String json = "[]";
        List<HashMap<String, Object>> historial = new ArrayList<>();
        LocalDate fechaFinal = LocalDate.parse(fechaActual, KenkouUtils.dd_MM_yyyy);
        ObjectMapper mapper = JsonMapper.builder().addModule(new JavaTimeModule()).build();
        UsuarioObjetivoActivo objetivoActivo = IterableUtils.find(repository.getObjetivosByUsernameOrEmail(username, username), new Predicate<UsuarioObjetivoActivo>() {
            @Override
            public boolean evaluate(UsuarioObjetivoActivo object) {
                return object.isActivo();
            }
        });
        
        switch(objetivoActivo.getObjetivo().id) {
            case 1: historial = progresoParaBajarPeso(fechaInicial == null ? fechaFinal.minusMonths(1L) : LocalDate.parse(fechaInicial, KenkouUtils.dd_MM_yyyy), fechaFinal); break;
            case 2: progresoParaAumentarMasaMuscular(); break;
            case 3: progresoParaTonificar(); break;
        }

        try {
            json = mapper.writeValueAsString(historial);
        } catch (JsonProcessingException e) {
            LOG.error("Error al parsear progreso", e);
        }
        
        LOG.info(json);
        return json;
    }

    private List<HashMap<String, Object>> progresoParaBajarPeso(LocalDate fechaInicial, LocalDate fechaActual) {
        List<HashMap<String, Object>> historial = new ArrayList<>();
        List<Progreso> progresos = progresoRepository.findByFechaIsBetweenOrderByFechaAsc(fechaInicial, fechaActual);
        int tamano = progresos.size();

        for(int i = 0; i < tamano; i++) {
            Progreso progreso = progresos.get(i);
            HashMap<String, Object> intervalo = new HashMap<>();

            double perdidaPeso = progresos.get(i + 1).getPeso() / progreso.getPeso();
            double perdidaGrasa = progresos.get(i + 1).getPorcentajeGrasa() / progreso.getPorcentajeGrasa();

            intervalo.put("intervalo", i + 1);
            intervalo.put("fecha_inicial", progreso.getFecha().format(KenkouUtils.dd_MM_yyyy));
            intervalo.put("fecha_final", progresos.get(i + 1).getFecha().format(KenkouUtils.dd_MM_yyyy));
            intervalo.put("peso_inicial", progreso.getPeso());
            intervalo.put("peso_final", progresos.get(i + 1).getPeso());
            intervalo.put("grasa_inicial", progreso.getPorcentajeGrasa());
            intervalo.put("grasa_final", progresos.get(i + 1).getPorcentajeGrasa());
            intervalo.put("perdida_peso", perdidaPeso);
            intervalo.put("porcentaje_perdida_peso", (1.0 - perdidaPeso) * 100.0);
            intervalo.put("perdida_grasa", perdidaGrasa);
            intervalo.put("porcentaje_perdida_grasa", (1.0 - perdidaGrasa) * 100);
            historial.add(intervalo);
            
            if(i + 1 == tamano - 1) {
                break;
            }
        }
        
        return historial;
    }
    
    private Map<String, Object> progresoParaAumentarMasaMuscular() {
        return null;
    }
    
    private Map<String, Object> progresoParaTonificar() {
        return null;
    }
}
