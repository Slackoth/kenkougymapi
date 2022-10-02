package uca.ungallocontenis.kenkougymapi.entity.General;

import java.util.List;

import javax.persistence.*;

import uca.ungallocontenis.kenkougymapi.entity.Nutricion.Receta;

@Entity(name = "Fotografia")
@Table(name = "fotografia")
public class Fotografia {
    @Id
    public int id;
    public String foto;
    // @ManyToMany(mappedBy = "fotografias")
    // public List<Receta> recetas;
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }
}
