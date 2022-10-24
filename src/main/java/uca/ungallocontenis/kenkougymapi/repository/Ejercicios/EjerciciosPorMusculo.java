package uca.ungallocontenis.kenkougymapi.repository.Ejercicios;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import uca.ungallocontenis.kenkougymapi.entity.Ejercicios.EjercicioPorMusculo;
import org.springframework.stereotype.Repository; 

@Repository

public interface EjerciciosPorMusculo extends JpaRepository<EjercicioPorMusculo, Long>{
    public EjercicioPorMusculo findByid(Integer id);
    public List<EjercicioPorMusculo> findAll();
    //public List<EjercicioPorMusculo> findByMusculo_IdIsInAndEjercicio_IdIsInAndimagenEjercicio_IdIsIn(List<Integer> musculoId, List<Integer> ejercicioId, List<Integer> imagenId);
}
