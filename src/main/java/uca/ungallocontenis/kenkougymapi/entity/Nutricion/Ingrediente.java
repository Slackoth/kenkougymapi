package uca.ungallocontenis.kenkougymapi.entity.Nutricion;

import java.util.List;

import javax.persistence.*;

@Entity(name = "Ingrediente")
@Table(name = "ingrediente")
public class Ingrediente {
    @Id
    public int id;
    @Column(name="nombre_alimento")
    public String nombreAlimento;
    public float calorias;
    public float proteinas;
    public float carbohidratos;
    public float fibra;
    @Column(name="grasasaturada")
    public float grasaSaturada;
    public float minerales;
    public float vitaminas;
    @ManyToMany(mappedBy = "ingredientes")
    public List<Receta> recetas;
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreAlimento() {
        return nombreAlimento;
    }

    public void setNombreAlimento(String nombreAlimento) {
        this.nombreAlimento = nombreAlimento;
    }

    public float getCalorias() {
        return calorias;
    }

    public void setCalorias(float calorias) {
        this.calorias = calorias;
    }

    public float getProteinas() {
        return proteinas;
    }

    public void setProteinas(float proteinas) {
        this.proteinas = proteinas;
    }

    public float getCarbohidratos() {
        return carbohidratos;
    }

    public void setCarbohidratos(float carbohidratos) {
        this.carbohidratos = carbohidratos;
    }

    public float getFibra() {
        return fibra;
    }

    public void setFibra(float fibra) {
        this.fibra = fibra;
    }

    public float getGrasaSaturada() {
        return grasaSaturada;
    }

    public void setGrasaSaturada(float grasaSaturada) {
        this.grasaSaturada = grasaSaturada;
    }

    public float getMinerales() {
        return minerales;
    }

    public void setMinerales(float minerales) {
        this.minerales = minerales;
    }

    public float getVitaminas() {
        return vitaminas;
    }

    public void setVitaminas(float vitaminas) {
        this.vitaminas = vitaminas;
    }
}