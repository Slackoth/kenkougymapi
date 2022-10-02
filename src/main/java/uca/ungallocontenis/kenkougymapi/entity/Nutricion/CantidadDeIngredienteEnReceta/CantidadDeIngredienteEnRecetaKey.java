package uca.ungallocontenis.kenkougymapi.entity.Nutricion.CantidadDeIngredienteEnReceta;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class CantidadDeIngredienteEnRecetaKey implements Serializable {
    @Column(name = "id_receta")
    int recetaId;
    @Column(name = "id_ingrediente")
    int ingredienteId;
    
    public int getRecetaId() {
        return recetaId;
    }

    public void setRecetaId(int recetaId) {
        this.recetaId = recetaId;
    }

    public int getIngredienteId() {
        return ingredienteId;
    }

    public void setIngredienteId(int ingredienteId) {
        this.ingredienteId = ingredienteId;
    }
}