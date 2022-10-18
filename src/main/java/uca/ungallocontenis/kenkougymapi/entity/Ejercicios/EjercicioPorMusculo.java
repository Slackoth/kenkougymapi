package uca.ungallocontenis.kenkougymapi.entity.Ejercicios;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "EjercicioPorMusculo")
@Table(name = "ejercicio_x_musculo")
public class EjercicioPorMusculo {
    @Id
    public int id;
    @JsonIgnore
    @ManyToOne
    @MapsId("musculoId")
    @JoinColumn(name = "id")
    Musculo musculo;
    @ManyToOne
    @MapsId("ejercicioId")
    @JoinColumn(name = "id")
    Ejercicio ejercicio;
    @ManyToOne
    @MapsId("idImagen")
    @JoinColumn(name = "id")
    ImagenEjercicio imagenEjercicio;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public Musculo getMusculo() {
        return musculo;
    }
    public void setMusculo(Musculo musculo) {
        this.musculo = musculo;
    }

    public Ejercicio getEjercicio() {
        return ejercicio;
    }
    public void setEjercicio(Ejercicio ejercicio) {
        this.ejercicio = ejercicio;
    }

    public ImagenEjercicio getImagenEjercicio() {
        return imagenEjercicio;
    }
    public void setImagenEjercicio(ImagenEjercicio imagenEjercicio) {
        this.imagenEjercicio = imagenEjercicio;
    }
}
