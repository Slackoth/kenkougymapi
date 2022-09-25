package uca.ungallocontenis.kenkougymapi.entity.Nutricion;

import java.util.List;

import javax.persistence.*;

@Entity(name = "PlanAlimenticio")
@Table(name = "planalimenticio")
public class PlanAlimenticio {
    @Id
    public int id;
    public String nombre;
    @OneToOne
    public EstiloAlimenticio estiloAlimentacion;
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "planXReceta", joinColumns = {@JoinColumn(name = "planId", referencedColumnName = "id")}, inverseJoinColumns = {@JoinColumn(name = "recetaId", referencedColumnName = "id")})
    public List<Receta> planRecetas;
    
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

    public EstiloAlimenticio getEstiloAlimentacion() {
        return estiloAlimentacion;
    }

    public void setEstiloAlimentacion(EstiloAlimenticio estiloAlimentacion) {
        this.estiloAlimentacion = estiloAlimentacion;
    }

    public List<Receta> getPlanRecetas() {
        return planRecetas;
    }

    public void setPlanRecetas(List<Receta> planRecetas) {
        this.planRecetas = planRecetas;
    }
}
