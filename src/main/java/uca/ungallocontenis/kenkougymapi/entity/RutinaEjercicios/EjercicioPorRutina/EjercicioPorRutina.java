package uca.ungallocontenis.kenkougymapi.entity.RutinaEjercicios.EjercicioPorRutina;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnore;

import uca.ungallocontenis.kenkougymapi.entity.RutinaEjercicios.EjercicioPorMusculo;
import uca.ungallocontenis.kenkougymapi.entity.RutinaEjercicios.Rutina;

@Entity(name = "EjercicioPorRutina")
@Table(name = "ejercicio_x_rutina")
public class EjercicioPorRutina {
    @EmbeddedId
    EjercicioPorRutinaKey ejercicioPorRutinaId;
    @JsonIgnore
    @ManyToOne
    @MapsId("rutinaId")
    @JoinColumn(name = "id_rutina")
    Rutina rutina;
    @ManyToOne
    @MapsId("ejercicioPorMusculoId")
    @JoinColumn(name = "id_ejercicio_x_musculo")
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
