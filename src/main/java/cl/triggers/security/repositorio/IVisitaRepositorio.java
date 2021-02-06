package cl.triggers.security.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.triggers.security.model.Visita;

public interface IVisitaRepositorio extends JpaRepository<Visita, Integer> {

}
