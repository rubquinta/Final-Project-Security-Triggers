package cl.triggers.security.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="ADMINISTRATIVO")
public class Administrativo  {
	
	@Id
	@Column(name="admirun")
	private int adm_runUsuario;
	
	@Column(name="ADMAREA")
	private String area;
	
	@Column(name="admeprevia")
	private String experienciaPrevia;
	
	public Administrativo() {
		
	}	


	public Administrativo(int adm_runUsuario, String area, String experienciaPrevia) {
		
		this.adm_runUsuario = adm_runUsuario;
		this.area = area;
		this.experienciaPrevia = experienciaPrevia;
	}








	public int getAdm_runUsuario() {
		return adm_runUsuario;
	}




	public void setAdm_runUsuario(int adm_runUsuario) {
		this.adm_runUsuario = adm_runUsuario;
	}




	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getExperienciaPrevia() {
		return experienciaPrevia;
	}
	public void setExperienciaPrevia(String experienciaPrevia) {
		this.experienciaPrevia = experienciaPrevia;
	}

	public String toString() {
		return "Administrativo [area=" + area + ", experienciaPrevia=" + experienciaPrevia + "]";
	}
 

}
