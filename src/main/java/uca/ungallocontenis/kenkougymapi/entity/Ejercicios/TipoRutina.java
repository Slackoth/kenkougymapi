package uca.ungallocontenis.kenkougymapi.entity.Ejercicios;

import javax.persistence.*;

@Entity(name = "TipoRutina")
@Table(name = "tipo_rutina")
public class TipoRutina {
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
        return "tipo_rutina [nombre=" + nombre + "]";
    }
}
