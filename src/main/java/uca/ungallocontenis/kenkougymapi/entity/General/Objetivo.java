package uca.ungallocontenis.kenkougymapi.entity.General;

import javax.persistence.*;

@Entity(name = "Objetivo")
@Table(name = "objetivo")
public class Objetivo {
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
}
