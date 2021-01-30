package cl.triggers.security.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.triggers.security.model.Usuario;

public interface IUsuariosRepositorio extends JpaRepository<Usuario, Integer>{
	
	

}
