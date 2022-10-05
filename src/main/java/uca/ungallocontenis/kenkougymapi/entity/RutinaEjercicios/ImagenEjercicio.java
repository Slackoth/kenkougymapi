package uca.ungallocontenis.kenkougymapi.entity.RutinaEjercicios;

import javax.persistence.*;

@Entity(name = "ImagenEjercicio")
@Table(name = "imagen_ejercicio")
public class ImagenEjercicio {
    @Id
    public int id_imagen_ejercicio;
    public String imagen_ejercicio;

    public int getId_imagen_ejercicio() {
        return id_imagen_ejercicio;
    }
    public void setId_imagen_ejercicio(int id_imagen_ejercicio) {
        this.id_imagen_ejercicio = id_imagen_ejercicio;
    }

    public String getImagen_ejercicio() {
        return imagen_ejercicio;
    }
    public void setImagen_ejercicio(String imagen_ejercicio) {
        this.imagen_ejercicio = imagen_ejercicio;
    }

    @Override
    public String toString() {
        return "imagen_ejercicio [imagen_ejercicio=" + imagen_ejercicio + "]";
    }
}
