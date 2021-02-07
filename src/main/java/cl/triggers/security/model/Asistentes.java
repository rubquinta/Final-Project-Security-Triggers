package cl.triggers.security.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Asistentes {
	
	@Id
	public int runAsistente;
	
	@Column(name="asistnombrecompleto")
	public String asistNombres;
	
	public int asistEdad;
	
	public String asistCorreo;
	
	public int asistTelefono;
	
	public int capacitacion_idCapacitacion;

	public Asistentes() {
		
	}
	
	public Asistentes(int runAsistente, String asistNombres, int asistEdad, String asistCorreo, int asistTelefono,
			int capacitacion_idCapacitacion) {
	
		this.runAsistente = runAsistente;
		this.asistNombres = asistNombres;
		this.asistEdad = asistEdad;
		this.asistCorreo = asistCorreo;
		this.asistTelefono = asistTelefono;
		this.capacitacion_idCapacitacion = capacitacion_idCapacitacion;
	}

	public int getRunAsistente() {
		return runAsistente;
	}

	public void setRunAsistente(int runAsistente) {
		this.runAsistente = runAsistente;
	}

	public String getAsistNombres() {
		return asistNombres;
	}

	public void setAsistNombres(String asistNombres) {
		this.asistNombres = asistNombres;
	}

	public int getAsistEdad() {
		return asistEdad;
	}

	public void setAsistEdad(int asistEdad) {
		this.asistEdad = asistEdad;
	}

	public String getAsistCorreo() {
		return asistCorreo;
	}

	public void setAsistCorreo(String asistCorreo) {
		this.asistCorreo = asistCorreo;
	}

	public int getAsistTelefono() {
		return asistTelefono;
	}

	public void setAsistTelefono(int asistTelefono) {
		this.asistTelefono = asistTelefono;
	}

	public int getCapacitacion_idCapacitacion() {
		return capacitacion_idCapacitacion;
	}

	public void setCapacitacion_idCapacitacion(int capacitacion_idCapacitacion) {
		this.capacitacion_idCapacitacion = capacitacion_idCapacitacion;
	}

	
	
}
