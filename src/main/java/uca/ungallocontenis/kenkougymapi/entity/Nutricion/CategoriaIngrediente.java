package uca.ungallocontenis.kenkougymapi.entity.Nutricion;

import javax.persistence.*;

@Entity(name = "CategoriaIngrediente")
@Table(name = "categoriaingrediente")
public class CategoriaIngrediente {
    @Id
    public int id;
    public String descripcion;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "CategoriaIngrediente [descripcion=" + descripcion + "]";
    }
}
