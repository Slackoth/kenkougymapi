package uca.ungallocontenis.kenkougymapi.entity.Ejercicios;

import javax.persistence.*;

@Entity(name = "Musculo")
@Table(name = "musculo")
public class Musculo {
    @Id
    public int id;
    public String nombre;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "musculo [nombre=" + nombre + "]";
    }
}
