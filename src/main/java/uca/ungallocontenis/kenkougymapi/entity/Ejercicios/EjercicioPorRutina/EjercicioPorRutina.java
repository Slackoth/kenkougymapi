package uca.ungallocontenis.kenkougymapi.entity.Ejercicios.EjercicioPorRutina;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnore;

import uca.ungallocontenis.kenkougymapi.entity.Ejercicios.EjercicioPorMusculo;
import uca.ungallocontenis.kenkougymapi.entity.Ejercicios.Rutina;

@Entity(name = "EjercicioPorRutina")
@Table(name = "ejercicio_x_rutina")
public class EjercicioPorRutina {
    @EmbeddedId
    EjercicioPorRutinaKey ejercicioPorRutinaId;
    @JsonIgnore
    @ManyToOne
    @MapsId("idRutina")
    @JoinColumn(name = "id")
    Rutina rutina;
    @ManyToOne
    @MapsId("idEMusculo")
    @JoinColumn(name = "id")
    EjercicioPorMusculo ejercicioPorMusculo;

    public EjercicioPorRutinaKey getEjercicioPorRutinaId() {
        return ejercicioPorRutinaId;
    }
    public void setEjercicioPorRutinaId(EjercicioPorRutinaKey ejercicioPorRutinaId) {
        this.ejercicioPorRutinaId = ejercicioPorRutinaId;
    }

    public Rutina getRutina() { 
        return rutina;
    }
    public void setRutina(Rutina rutina) {
        this.rutina = rutina;
    }
    
    public EjercicioPorMusculo getEjercicioPorMusculo() {
        return ejercicioPorMusculo;
    } 
    public void setEjercicioPorMusculo(EjercicioPorMusculo ejercicioPorMusculo) {
        this.ejercicioPorMusculo = ejercicioPorMusculo;
    }
}
