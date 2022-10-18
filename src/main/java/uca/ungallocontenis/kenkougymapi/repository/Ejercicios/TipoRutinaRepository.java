package uca.ungallocontenis.kenkougymapi.repository.Ejercicios;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import uca.ungallocontenis.kenkougymapi.entity.Ejercicios.TipoRutina;
import org.springframework.stereotype.Repository; 
@Repository

public interface TipoRutinaRepository extends JpaRepository<TipoRutina, Long> {
    public TipoRutina findByNombre(String nombre);
    public List<TipoRutina> findByNombreIsContainingIgnoringCase(String nombre);
    public TipoRutina findById(int id);
    //public List<TipoRutina> findByIdIsIn(List<Integer> id);
    /*public List<TipoRutina> findByNombreIsContainingIgnoringCase(String nombre);
    public List<TipoRutina> findByObjetivo_Id(int objetivoId);
    public List<TipoRutina> findByObjetivo_IdIsIn(List<Integer> objetivosId);
    public List<TipoRutina> findByEstiloAlimentacion_Id(int estiloId);
    public List<TipoRutina> findByEstiloAlimentacion_IdIsIn(List<Integer> estilosId);
    public List<TipoRutina> findByRecetas_Id(int recetaId);
    public List<TipoRutina> findByRecetas_IdIsIn(List<Integer> recetasId);
    */
}
