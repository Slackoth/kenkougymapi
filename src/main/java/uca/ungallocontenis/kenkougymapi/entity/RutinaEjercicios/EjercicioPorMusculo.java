package uca.ungallocontenis.kenkougymapi.entity.RutinaEjercicios;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "EjercicioPorMusculo")
@Table(name = "ejercicio_x_musculo")
public class EjercicioPorMusculo {
    @Id
    public int id_ejercicio_x_musculo;
    @JsonIgnore
    @ManyToOne
    @MapsId("musculoId")
    @JoinColumn(name = "id_musculo")
    Musculo musculo;
    @ManyToOne
    @MapsId("ejercicioId")
    @JoinColumn(name = "id_ejercicio")
    Ejercicio ejercicio;
    @OneToMany
    @MapsId("imagenEjercicioId")
    @JoinColumn(name = "id_imagen_ejercicio")
    ImagenEjercicio imagenEjercicio;

    public int getId_ejercicio_x_musculo() {
        return id_ejercicio_x_musculo;
    }
    public void setId_ejercicio_x_musculo(int id_ejercicio_x_musculo) {
        this.id_ejercicio_x_musculo = id_ejercicio_x_musculo;
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
