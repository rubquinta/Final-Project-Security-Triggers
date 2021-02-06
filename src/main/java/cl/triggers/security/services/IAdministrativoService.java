package cl.triggers.security.services;

import java.util.List;

import cl.triggers.security.model.Administrativo;
import cl.triggers.security.model.Cliente;
import cl.triggers.security.model.Pagos;
import cl.triggers.security.model.Profesional;
import cl.triggers.security.model.Usuario;

public interface IAdministrativoService {
	
	List<Usuario> getAll();
	List<Pagos> getAllPagos();	
	
	Usuario getOne(int run);

	Cliente getOneCliente(int run);

	Administrativo getOneAdm(int run);

	Profesional getOneProf(int run);
	
	void saveOne(Usuario usr);

	void saveOne(Cliente cli);
	
	void saveOne(Administrativo adm);
	
	void saveOne(Profesional pro);
	
	void saveOne(Pagos p);

	void deleteOneU(int run);	
	void deleteOneCliente(int run);	
	void deleteOneProf(int run);	
	void deleteOneAdm(int run);

	

}
