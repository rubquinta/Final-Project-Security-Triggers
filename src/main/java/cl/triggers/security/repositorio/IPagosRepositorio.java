package cl.triggers.security.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.triggers.security.model.Pagos;

public interface IPagosRepositorio extends JpaRepository<Pagos, Integer>{

}
