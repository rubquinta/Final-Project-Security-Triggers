package cl.triggers.security.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.triggers.security.model.Administrativo;

public interface IAdministrativoRepositorio extends JpaRepository<Administrativo, Integer>{

}
