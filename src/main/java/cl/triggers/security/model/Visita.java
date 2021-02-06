package cl.triggers.security.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Visita {
	
	
	public int getIdVisita() {
		return idVisita;
	}

	public void setIdVisita(int idVisita) {
		this.idVisita = idVisita;
	}

	public int getRutCliente() {
		return rutCliente;
	}

	public void setRutCliente(int rutCliente) {
		this.rutCliente = rutCliente;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public String getLugar() {
		return lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public String getComentarios() {
		return comentarios;
	}

	public void setComentarios(String comentarios) {
		this.comentarios = comentarios;
	}

	public Visita(int idVisita, int rutCliente, String fecha, String hora, String lugar, String comentarios) {
		this.idVisita = idVisita;
		this.rutCliente = rutCliente;
		this.fecha = fecha;
		this.hora = hora;
		this.lugar = lugar;
		this.comentarios = comentarios;
	}
	
	@Id
	private int idVisita;
	private int rutCliente;
	private String fecha;
	private String hora;
	private String lugar;
	private String comentarios;
	
	public Visita() {
		
	}

	



	
	
}
