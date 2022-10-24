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
}
