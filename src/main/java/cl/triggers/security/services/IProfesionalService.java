package cl.triggers.security.services;

import java.util.List;

import cl.triggers.security.model.Visita;

public interface IProfesionalService {

	List<Visita> getAll();
	
	void saveOne(Visita vis);
	
	
	
	
}
