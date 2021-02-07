package cl.triggers.security.services;

import java.util.List;

import cl.triggers.security.model.Asistentes;
import cl.triggers.security.model.Capacitacion;

public interface IClienteService {
	
	List<Capacitacion> getAll();
	
	List<Asistentes> getAllAsist();
	
	void saveOne(Capacitacion capa);
	
	void saveOneAsist(Asistentes asist);
	 
	void deleteOneAsist(int runAsistente);
}
