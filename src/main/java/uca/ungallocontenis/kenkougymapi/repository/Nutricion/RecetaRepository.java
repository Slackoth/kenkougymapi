package uca.ungallocontenis.kenkougymapi.repository.Nutricion;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import uca.ungallocontenis.kenkougymapi.entity.Nutricion.Receta;

public interface RecetaRepository extends JpaRepository<Receta, Long> {
    public Receta findByNombre(String nombre);
    public List<Receta> findByNombreIsLikeIgnoringCase(String nombre);
    /* Objetivo */
    public List<Receta> findByObjetivo_Id(int objetivoId);
    public List<Receta> findByObjetivo_IdIsIn(List<Integer> objetivosId);
    /* Tiempo Comida */
    public List<Receta> findByTiempoComida_Id(int tiempoComidaId);
    public List<Receta> findByTiempoComida_IdIsIn(List<Integer> tiempoComidasId);
    /* Ingrediente */
    // findByIngrediente
    public List<Receta> findByCantidadDeIngrediente_Ingrediente_Id(int ingredienteId);
    // findByIngredientes
    public List<Receta> findByCantidadDeIngrediente_Ingrediente_IdIsIn(List<Integer> ingredientesId);
    /* All */
    public List<Receta> findByObjetivo_IdIsInAndTiempoComida_IdIsIn(List<Integer> objetivosId, List<Integer> tiempoComidasId);
    public List<Receta> findByObjetivo_IdIsInAndCantidadDeIngrediente_Ingrediente_IdIsIn(List<Integer> objetivosId, List<Integer> ingredientesId);
    public List<Receta> findByTiempoComida_IdIsInAndCantidadDeIngrediente_Ingrediente_IdIsIn(List<Integer> tiempoComidasId, List<Integer> ingredientesId);
    public List<Receta> findByObjetivo_IdIsInAndTiempoComida_IdIsInAndCantidadDeIngrediente_Ingrediente_IdIsIn(List<Integer> objetivosId, List<Integer> tiempoComidasId, List<Integer> ingredientesId);
}
