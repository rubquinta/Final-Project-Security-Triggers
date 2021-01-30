package cl.triggers.security.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.triggers.security.model.Cliente;

public interface IClientesRepositorio extends JpaRepository<Cliente, Integer>{

}
