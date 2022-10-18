package uca.ungallocontenis.kenkougymapi.entity.Ejercicios;

import javax.persistence.*;

@Entity(name = "Ejercicio")
@Table(name = "ejercicio")
public class Ejercicio {
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
        return "ejercicio [nombre=" + nombre + "]";
    }
}