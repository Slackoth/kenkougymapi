package uca.ungallocontenis.kenkougymapi.entity.Ejercicios;

import javax.persistence.*;

@Entity(name = "ImagenEjercicio")
@Table(name = "imagen_ejercicio")
public class ImagenEjercicio {
    @Id
    public int id;
    public String imagen;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getImagen() {
        return imagen;
    }
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    @Override
    public String toString() {
        return "imagen_ejercicio [imagen=" + imagen + "]";
    }
}
