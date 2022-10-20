package uca.ungallocontenis.kenkougymapi.entity.Nutricion;

import java.util.List;

import javax.persistence.*;

@Entity(name = "TablaNutricional")
@Table(name = "tablanutricional")
public class TablaNutricional {
    @Id
    public int id;
    public float calorias;
    public float proteinas;
    public float carbohidratos;
    public float fibra;
    @Column(name="grasas")
    public float grasas;

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // public String getNombreAlimento() {
    //     return nombreAlimento;
    // }

    // public void setNombreAlimento(String nombreAlimento) {
    //     this.nombreAlimento = nombreAlimento;
    // }

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
        return grasas;
    }

    public void setGrasaSaturada(float grasas) {
        this.grasas = grasas;
    }



    // public CategoriaIngrediente getCategoria() {
    //     return categoria;
    // }

    // public void setCategoria(CategoriaIngrediente categoria) {
    //     this.categoria = categoria;
    // }

    @Override
    public String toString() {
        return "Ingrediente [calorias=" + calorias + ", carbohidratos=" + carbohidratos
                + ", fibra=" + fibra 
                +  ", grasaSaturada=" + grasas + ", id=" + id
                +  ", proteinas=" + proteinas +  "]";
    }
}