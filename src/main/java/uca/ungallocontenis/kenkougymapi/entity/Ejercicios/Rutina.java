package uca.ungallocontenis.kenkougymapi.entity.Ejercicios;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "Rutina")
@Table(name = "rutina")
public class Rutina {
    @Id
    public int id;
    @JsonIgnore
    @OneToOne
    @MapsId("idTRutina")
    @JoinColumn(name = "id")
    TipoRutina tipoRutina;
    public String nombre;
    public int series;
    public int repeticiones;
    public int pesoRecomendado;
    public String tiempoRecomendado;
    public String vecesXsemana;
    public String otrasIndicaciones;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public TipoRutina getTipoRutina() {
        return tipoRutina;
    }
    public void setTipoRutina(TipoRutina tipoRutina) {
        this.tipoRutina = tipoRutina;
    }

    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
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

    public int getPesoRecomendado() {
        return pesoRecomendado;
    }
    public void setPesoRecomendado(int pesoRecomendado) {
        this.pesoRecomendado = pesoRecomendado;
    }

    public String getTiempoRecomendado() {
        return tiempoRecomendado;
    }
    public void setTiempoRecomendado(String tiempoRecomendado) {
        this.tiempoRecomendado = tiempoRecomendado;
    }

    public String getVecesXsemana() {
        return vecesXsemana;
    }
    public void setVecesXsemana(String vecesXsemana) {
        this.vecesXsemana = vecesXsemana;
    }

    public String getOtrasIndicaciones() {
        return otrasIndicaciones;
    }
    public void setOtrasIndicaciones(String otrasIndicaciones) {
        this.otrasIndicaciones = otrasIndicaciones;
    }

    @Override
    public String toString() {
        return "rutina [nombre=" + nombre + ", series=" + series + ", repeticiones=" + repeticiones + 
        ", pesoRecomendado=" + pesoRecomendado + ", tiempoRecomendado=" + tiempoRecomendado + 
        ", vecesXsemana=" + vecesXsemana + ", otrasIndicaciones=" + otrasIndicaciones + "]";
    }
}