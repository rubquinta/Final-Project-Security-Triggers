package cl.triggers.security.model;

 
import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;


@Entity(name="USUARIO")
public class Usuario  {

	@Id 	
	@Column(name="USURUN")
	public int run;
	
	@Column(name="USUNOMBRES")
	public String nombre;
	
	@Column(name="USUNACIMIENTO")
	public String fechaNacimiento;
	
	@Column(name="TIPOUSUARIO")
	public String tipoUsuario;
	
	public Usuario() {
		
	}
	
 

	public Usuario(int run, String nombre, String fechaNacimiento, String tipoUsuario) {
	
		this.run = run;
		this.nombre = nombre;
		this.fechaNacimiento = fechaNacimiento;
		this.tipoUsuario = tipoUsuario;
	}
 


	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getFechaNacimiento() {
		return fechaNacimiento;
	}
	
	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	
	
	public int getRun() {
		return run;
	}
	
	public void setRun(int run) {
		this.run = run;
	}
	
	public String getTipoUsuario() {
		return tipoUsuario;
	}

	public void setTipoUsuario(String tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}

	
	
	




	

	
	

}
