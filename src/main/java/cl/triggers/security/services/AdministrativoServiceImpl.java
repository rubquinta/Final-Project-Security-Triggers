package cl.triggers.security.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.triggers.security.model.Administrativo;
import cl.triggers.security.model.Cliente;
import cl.triggers.security.model.Pagos;
import cl.triggers.security.model.Profesional;
import cl.triggers.security.model.Usuario;
import cl.triggers.security.repositorio.IAdministrativoRepositorio;
import cl.triggers.security.repositorio.IClientesRepositorio;
import cl.triggers.security.repositorio.IPagosRepositorio;
import cl.triggers.security.repositorio.IProfesionalRepositorio;
import cl.triggers.security.repositorio.IUsuariosRepositorio;

@Service
public class AdministrativoServiceImpl implements IAdministrativoService{

	@Autowired
	IUsuariosRepositorio usuarioRepositorio;

	@Autowired
	IClientesRepositorio clienteRepositorio;

	@Autowired
	IAdministrativoRepositorio admRepositorio;

	@Autowired
	IProfesionalRepositorio profRepositorio;

	@Autowired
	IPagosRepositorio pagosRepositorio;
	
	@Override
	public List<Usuario> getAll() {

		
		return usuarioRepositorio.findAll();
	}
	 
	@Override
	public List<Pagos> getAllPagos() {

		
		return pagosRepositorio.findAll();
	}
	
	@Override
	public List<Cliente> getAllClientes(){
		
		return clienteRepositorio.findAll();
	}
	
	@Override
	public List<Profesional> getAllProf() {
		 
		return profRepositorio.findAll();
	}

	@Override
	public Usuario getOne(int run) {
		
		return usuarioRepositorio.findOne(run);
	}
 
	@Override
	public Cliente getOneCliente(int run) {

		return clienteRepositorio.findOne(run);
	}

	@Override
	public Administrativo getOneAdm(int run) { 
		
		
		return admRepositorio.findOne(run);
	}

	@Override
	public Profesional getOneProf(int run) { 
		
		
		return profRepositorio.findOne(run);
	}

	@Override
	public void saveOne(Usuario usr) {

		usuarioRepositorio.save(usr);
		
	}

	@Override
	public void saveOne(Cliente cli) {

		clienteRepositorio.save(cli);
		
	}

	@Override
	public void saveOne(Administrativo adm) {

		admRepositorio.save(adm);
		
	}

	@Override
	public void saveOne(Profesional prof) {
	 
		profRepositorio.save(prof);
		
	}
	
	@Override
	public void saveOne(Pagos pago) {
	 
		pagosRepositorio.save(pago);
		
	}

	@Override
	public void deleteOneU(int run) {
		
		usuarioRepositorio.delete(run);
		
	}
	
	@Override
	public void deleteOneCliente(int run) {
		
		clienteRepositorio.delete(run);
		
	}
 
	@Override
	public void deleteOneAdm(int run) {
		
		admRepositorio.delete(run);
		
	}
 
	@Override
	public void deleteOneProf(int run) {
		
		profRepositorio.delete(run);
		
	}

	 

}
