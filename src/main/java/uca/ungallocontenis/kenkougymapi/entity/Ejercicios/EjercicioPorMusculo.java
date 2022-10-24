package uca.ungallocontenis.kenkougymapi.entity.Ejercicios;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "EjercicioPorMusculo")
@Table(name = "ejercicio_x_musculo")
public class EjercicioPorMusculo {
    @Id
    public int id;
    @ManyToOne
    @MapsId("musculoId")
    @JoinColumn(name = "idmusculo")
    Musculo musculo;
    @ManyToOne
    @MapsId("ejercicioId")
    @JoinColumn(name = "idejercicio")
    Ejercicio ejercicio;
    @ManyToOne
    @MapsId("idImagen")
    @JoinColumn(name = "idimagen") 
    ImagenEjercicio imagenEjercicio;

    public int getId() {
        return id; 
    }
    public void setIdE(int id) {
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
