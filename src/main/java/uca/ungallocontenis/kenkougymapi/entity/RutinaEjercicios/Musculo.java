package uca.ungallocontenis.kenkougymapi.entity.RutinaEjercicios;

import javax.persistence.*;

@Entity(name = "Musculo")
@Table(name = "musculo")
public class Musculo {
    @Id
    public int id_musculo;
    public String nombre_musculo;

    public int getId_musculo() {
        return id_musculo;
    }
    public void setId_musculo(int id_musculo) {
        this.id_musculo = id_musculo;
    }

    public String getNombre_musculo() {
        return nombre_musculo;
    }
    public void setNombre_musculo(String nombre_musculo) {
        this.nombre_musculo = nombre_musculo;
    }

    @Override
    public String toString() {
        return "musculo [nombre_musculo=" + nombre_musculo + "]";
    }
}
