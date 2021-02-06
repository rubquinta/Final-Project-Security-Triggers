package cl.triggers.security.services;

import java.util.List;

import cl.triggers.security.model.Capacitacion;

public interface IClienteService {
	
	List<Capacitacion> getAll();
	
	void saveOne(Capacitacion capa);
	

}
