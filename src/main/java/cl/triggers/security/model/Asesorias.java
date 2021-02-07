package cl.triggers.security.model;

 

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Asesorias {
	
	@Id
	public int idAsesorias;
	
	public String asefecharealizacion; 
	
	public String asemotivo;
	
	public int asesorias_idCliente;
	
	public int asesorias_idPro;
	
	public Asesorias() {
		
	}
	

	public Asesorias(int idAsesorias, String asefecharealizacion, String asemotivo, int asesorias_idCliente,
			int asesorias_idPro) { 
		this.idAsesorias = idAsesorias;
		this.asefecharealizacion = asefecharealizacion;
		this.asemotivo = asemotivo;
		this.asesorias_idCliente = asesorias_idCliente;
		this.asesorias_idPro = asesorias_idPro;
	}


	public int getIdAsesorias() {
		return idAsesorias;
	}


	public void setIdAsesorias(int idAsesorias) {
		this.idAsesorias = idAsesorias;
	}


	public String getAsefecharealizacion() {
		return asefecharealizacion;
	}

	public void setAsefecharealizacion(String asefecharealizacion) {
		this.asefecharealizacion = asefecharealizacion;
	}

	public String getAsemotivo() {
		return asemotivo;
	}

	public void setAsemotivo(String asemotivo) {
		this.asemotivo = asemotivo;
	}




	public int getAsesorias_idCliente() {
		return asesorias_idCliente;
	}




	public void setAsesorias_idCliente(int asesorias_idCliente) {
		this.asesorias_idCliente = asesorias_idCliente;
	}




	public int getAsesorias_idPro() {
		return asesorias_idPro;
	}




	public void setAsesorias_idPro(int asesorias_idPro) {
		this.asesorias_idPro = asesorias_idPro;
	}
	
	
	
	 
	
	
	 

}
