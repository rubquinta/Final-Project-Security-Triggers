package cl.triggers.security.services;

import java.util.List;

import cl.triggers.security.model.Profesional;
import cl.triggers.security.model.Visita;
import cl.triggers.security.model.Asesorias;

public interface IProfesionalService {

	List<Visita> getAll();
	
	void saveOne(Visita vis);
	

	
	void saveAse(Asesorias ase);
	
	List<Asesorias> getAllAses();
	
	
	
	
}
