package cl.triggers.security.model;

import java.text.SimpleDateFormat;

import java.util.Scanner;

import javax.persistence.Entity;
import javax.persistence.Id;

import java.text.ParseException;


@Entity 
public class Capacitacion {
	
	@Id
	private int idCapacitacion;
	private int rutCliente;
	private String diaCapacitacion;
	private String horaCapacitacion;
	private String lugarCapacitacion;
	private String duracionCapacitacion;
	private int cantidadAsistentes;
	
	public Capacitacion() {
		
	}
	
	

	public Capacitacion(int idCapacitacion, int rutCliente, String diaCapacitacion, String horaCapacitacion,
			String lugarCapacitacion, String duracionCapacitacion, int cantidadAsistentes) {
		super();
		this.idCapacitacion = idCapacitacion;
		this.rutCliente = rutCliente;
		this.diaCapacitacion = diaCapacitacion;
		this.horaCapacitacion = horaCapacitacion;
		this.lugarCapacitacion = lugarCapacitacion;
		this.duracionCapacitacion = duracionCapacitacion;
		this.cantidadAsistentes = cantidadAsistentes;
	}

	public int getIdCapacitacion() {
		return idCapacitacion;
	}

	public void setIdCapacitacion(int idCapacitacion) {
		this.idCapacitacion = idCapacitacion;
	}

	public int getRutCliente() {
		return rutCliente;
	}

	public void setRutCliente(int rutCliente) {
		this.rutCliente = rutCliente;
	}

	public String getdiaCapacitacion() {
		return diaCapacitacion;
	}

	public void setdiaCapacitacion(String diaCapacitacion) {
		this.diaCapacitacion = diaCapacitacion;
	}

	public String getHoraCapacitacion() {
		return horaCapacitacion;
	}

	public void setHoraCapacitacion(String horaCapacitacion) {
		this.horaCapacitacion = horaCapacitacion;
	}

	public String getLugarCapacitacion() {
		return lugarCapacitacion;
	}

	public void setLugarCapacitacion(String lugarCapacitacion) {
		this.lugarCapacitacion = lugarCapacitacion;
	}
	
	public String getDuracionCapacitacion() {
		return duracionCapacitacion;
	}

	public void setDuracionCapacitacion(String duracionCapacitacion) {
		this.duracionCapacitacion = duracionCapacitacion;
	}	

	public int getCantidadAsistentes() {
		return cantidadAsistentes;
	}

	public void setCantidadAsistentes(int cantidadAsistentes) {
		this.cantidadAsistentes = cantidadAsistentes;
	}

	
	public String toString() {
		return "Capacitacion [idCapacitacion=" + idCapacitacion + ", rutCliente=" + rutCliente + ", diaCapacitacion="
				+ diaCapacitacion + ", horaCapacitacion=" + horaCapacitacion + ", lugarCapacitacion="
				+ lugarCapacitacion + ", cantidadAsistentes=" + cantidadAsistentes + "]";
	}
	
	
	
	
	
	
	
	
	
}