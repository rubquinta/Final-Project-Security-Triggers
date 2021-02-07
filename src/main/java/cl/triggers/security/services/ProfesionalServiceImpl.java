package cl.triggers.security.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.triggers.security.model.Asesorias;
import cl.triggers.security.model.Profesional;
import cl.triggers.security.model.Visita;
import cl.triggers.security.repositorio.IAsesoriasRepositorio;
import cl.triggers.security.repositorio.IProfesionalRepositorio;
import cl.triggers.security.repositorio.IVisitaRepositorio;

@Service
public class ProfesionalServiceImpl implements IProfesionalService {

	@Autowired
	IVisitaRepositorio visitaRepositorio;
	
	@Autowired
	IProfesionalRepositorio profRepositorio;
	
	@Autowired
	IAsesoriasRepositorio asesRepositorio;
	
	@Override
	public List<Visita> getAll() {

		
		return visitaRepositorio.findAll();
	}

	@Override
	public void saveOne(Visita vis) { 
		
		visitaRepositorio.save(vis);
		
	}

	

	@Override
	public void saveAse(Asesorias ase) {
		
		asesRepositorio.save(ase);
	}
	
	@Override
	public List<Asesorias> getAllAses(){
		
		return asesRepositorio.findAll();
	}
}
