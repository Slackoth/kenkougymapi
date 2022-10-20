package uca.ungallocontenis.kenkougymapi.repository.Nutricion;

import uca.ungallocontenis.kenkougymapi.entity.Nutricion.TablaNutricional;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import uca.ungallocontenis.kenkougymapi.entity.Nutricion.TablaNutricional;
import org.springframework.stereotype.Repository; 
@Repository

public interface TablaNutricionalRepository extends JpaRepository<TablaNutricional,Long>{
    public TablaNutricional findByid(int id);
}
