package cl.triggers.security.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.triggers.security.model.Visita;
import cl.triggers.security.repositorio.IVisitaRepositorio;

@Service
public class ProfesionalServiceImpl implements IProfesionalService {

	@Autowired
	IVisitaRepositorio visitaRepositorio;
	
	@Override
	public List<Visita> getAll() {

		
		return visitaRepositorio.findAll();
	}

	@Override
	public void saveOne(Visita vis) { 
		
		visitaRepositorio.save(vis);
		
	}

}
