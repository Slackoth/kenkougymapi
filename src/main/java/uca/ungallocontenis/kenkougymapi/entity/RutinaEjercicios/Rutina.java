package uca.ungallocontenis.kenkougymapi.entity.RutinaEjercicios;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "Rutina")
@Table(name = "rutina")
public class Rutina {
    @Id
    public int id_rutina;
    @JsonIgnore
    @OneToOne
    @MapsId("tipoRutinaId")
    @JoinColumn(name = "id_tipo_rutina")
    TipoRutina tipoRutina;
    public String nombre_rutina;
    public int series;
    public int repeticiones;
    public int peso_recomendado;
    public String tiempo_recomendado;
    public String veces_x_semana;

    public int getId_rutina() {
        return id_rutina;
    }
    public void setId_rutina(int id_rutina) {
        this.id_rutina = id_rutina;
    }

    public TipoRutina getTipoRutina() {
        return tipoRutina;
    }
    public void setTipoRutina(TipoRutina tipoRutina) {
        this.tipoRutina = tipoRutina;
    }

    public String getNombre_rutina() {
        return nombre_rutina;
    }
    public void setNombre_rutina(String nombre_rutina) {
        this.nombre_rutina = nombre_rutina;
    }

    public int getSeries() {
        return series;
    }
    public void setSeries(int series) {
        this.series = series;
    }

    public int getRepeticiones() {
        return repeticiones;
    }
    public void setRepeticiones(int repeticiones) {
        this.repeticiones = repeticiones;
    }

    public int getPeso_recomendado() {
        return peso_recomendado;
    }
    public void setPeso_recomendado(int peso_recomendado) {
        this.peso_recomendado = peso_recomendado;
    }

    public String getTiempo_recomendado() {
        return tiempo_recomendado;
    }
    public void setTiempo_recomendado(String tiempo_recomendado) {
        this.tiempo_recomendado = tiempo_recomendado;
    }

    public String getVeces_x_semana() {
        return veces_x_semana;
    }
    public void setVeces_x_semana(String veces_x_semana) {
        this.veces_x_semana = veces_x_semana;
    }

    @Override
    public String toString() {
        return "rutina [nombre_rutina=" + nombre_rutina + ", series=" + series + ", repeticiones=" + repeticiones + 
        ", peso_recomendado=" + peso_recomendado + ", tiempo_recomendado=" + tiempo_recomendado + 
        ", veces_x_semana=" + veces_x_semana + "]";
    }
}