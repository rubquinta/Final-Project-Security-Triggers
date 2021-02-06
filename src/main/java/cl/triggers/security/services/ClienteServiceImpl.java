package cl.triggers.security.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.triggers.security.model.Capacitacion;
import cl.triggers.security.repositorio.ICapacitacionRepositorio;

@Service
public class ClienteServiceImpl implements IClienteService{
	
	@Autowired
	ICapacitacionRepositorio capaRepositorio;

	@Override
	public List<Capacitacion> getAll() { 
		
		return capaRepositorio.findAll();
	}

	@Override
	public void saveOne(Capacitacion capa) {

		capaRepositorio.save(capa);
	}

}
