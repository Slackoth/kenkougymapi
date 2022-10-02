package uca.ungallocontenis.kenkougymapi.entity.Nutricion;

import javax.persistence.*;

@Entity(name = "EstiloAlimenticio")
@Table(name = "estiloalimenticio")
public class EstiloAlimenticio {
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
        return "EstiloAlimenticio [nombre=" + nombre + "]";
    }    
}
