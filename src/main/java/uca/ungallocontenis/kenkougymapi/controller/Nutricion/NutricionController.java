package uca.ungallocontenis.kenkougymapi.controller.Nutricion;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
}
