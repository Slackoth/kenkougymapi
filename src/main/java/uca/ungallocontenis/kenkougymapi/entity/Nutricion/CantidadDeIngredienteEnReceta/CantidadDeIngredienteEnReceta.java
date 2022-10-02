package uca.ungallocontenis.kenkougymapi.entity.Nutricion.CantidadDeIngredienteEnReceta;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

import uca.ungallocontenis.kenkougymapi.entity.Nutricion.Ingrediente;
import uca.ungallocontenis.kenkougymapi.entity.Nutricion.Receta;

@Entity(name = "CantidadDeIngredienteEnReceta")
@Table(name = "ingredientexreceta")
public class CantidadDeIngredienteEnReceta {
    @EmbeddedId
    CantidadDeIngredienteEnRecetaKey id;
    @JsonIgnore
    @ManyToOne
    @MapsId("recetaId")
    @JoinColumn(name = "id_receta")
    Receta receta;
    @ManyToOne
    @MapsId("ingredienteId")
    @JoinColumn(name = "id_ingrediente")
    Ingrediente ingrediente;
    float gramos;
    
    public CantidadDeIngredienteEnRecetaKey getId() {
        return id;
    }
    
    public void setId(CantidadDeIngredienteEnRecetaKey id) {
        this.id = id;
    }
    
    public Receta getReceta() {
        return receta;
    }
    
    public void setReceta(Receta receta) {
        this.receta = receta;
    }
    
    public Ingrediente getIngrediente() {
        return ingrediente;
    }
    
    public void setIngrediente(Ingrediente ingrediente) {
        this.ingrediente = ingrediente;
    }
    
    public float getGramos() {
        return gramos;
    }
    
    public void setGramos(float gramos) {
        this.gramos = gramos;
    }
    

    
}
