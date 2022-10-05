package uca.ungallocontenis.kenkougymapi.entity.RutinaEjercicios;

import javax.persistence.*;

@Entity(name = "Ejercicio")
@Table(name = "ejercicio")
public class Ejercicio {
    @Id
    public int id_ejercicio;
    public String nombre_ejercicio;

    public int getId_ejercicio() {
        return id_ejercicio;
    }
    public void setId_ejercicio(int id_ejercicio) {
        this.id_ejercicio = id_ejercicio;
    }

    public String getNombre_ejercicio() {
        return nombre_ejercicio;
    }
    public void setNombre_ejercicio(String nombre_ejercicio) {
        this.nombre_ejercicio = nombre_ejercicio;
    }

    @Override
    public String toString() {
        return "ejercicio [nombre_ejercicio=" + nombre_ejercicio + "]";
    }
}
