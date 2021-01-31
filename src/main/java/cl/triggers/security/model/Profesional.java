package cl.triggers.security.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="PROFESIONAL")
public class Profesional {
	
	@Id
	@Column(name="PROFRUN")
	private int prof_runUsuario;
	
	@Column(name="PROFTITULO")
	private String titulo;
	
	@Column(name="PROFFECHAIN")
	private String fechaIngreso;
	
	
	public Profesional() {

	}	
	 

	public Profesional(int prof_runUsuario, String titulo, String fechaIngreso) {
		this.prof_runUsuario = prof_runUsuario;
		this.titulo = titulo; 
		this.fechaIngreso = fechaIngreso;
	}


	public int getProf_runUsuario() {
		return prof_runUsuario;
	}



	public void setProf_runUsuario(int prof_runUsuario) {
		this.prof_runUsuario = prof_runUsuario;
	}



	public String getTitulo() {
		return titulo;
	}
	
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

 
	
	
	public String getFechaIngreso() {
		return fechaIngreso;
	}
	
	public void setFechaIngreso(String fechaIngreso) {
		this.fechaIngreso = fechaIngreso;
	}	

	 
}
