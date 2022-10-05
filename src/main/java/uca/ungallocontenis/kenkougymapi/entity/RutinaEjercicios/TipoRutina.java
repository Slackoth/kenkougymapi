package uca.ungallocontenis.kenkougymapi.entity.RutinaEjercicios;

import javax.persistence.*;

@Entity(name = "TipoRutina")
@Table(name = "tipo_rutina")
public class TipoRutina {
    @Id
    public int id_tipo_rutina;
    public String nombre_tipo_rutina;

    public int getId_tipo_rutina() {
        return id_tipo_rutina;
    }
    public void setId_tipo_rutina(int id_tipo_rutina) {
        this.id_tipo_rutina = id_tipo_rutina;
    }

    public String getNombre_tipo_rutina() {
        return nombre_tipo_rutina;
    }
    public void setNombre_tipo_rutina(String nombre_tipo_rutina) {
        this.nombre_tipo_rutina = nombre_tipo_rutina;
    }

    @Override
    public String toString() {
        return "tipo_rutina [nombre_tipo_rutina=" + nombre_tipo_rutina + "]";
    }
}
