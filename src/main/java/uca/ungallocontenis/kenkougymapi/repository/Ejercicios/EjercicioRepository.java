package uca.ungallocontenis.kenkougymapi.repository.Ejercicios;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import uca.ungallocontenis.kenkougymapi.entity.Ejercicios.Ejercicio;
import org.springframework.stereotype.Repository; 

@Repository

public interface EjercicioRepository extends JpaRepository<Ejercicio, Long> {
    public Ejercicio findById(int id);
    public Ejercicio findByNombre(String nombre);
    public List<Ejercicio> findByNombreIsContainingIgnoringCase(String nombre);
}
