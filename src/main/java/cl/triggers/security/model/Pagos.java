package cl.triggers.security.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;

@Entity(name="PAGOS")
public class Pagos {
	
	@Id
	@Column(name="IDPAGOS")
	public int idPagos;
	
	@Column(name="FECHAPAGO")
	public String fechaPago;
	
	@Column(name="MONTOPAGO")
	public int montoPago;
	
	@Column(name="MESPAGO")
	public String mesPago;
	
	@Column(name="ANIOPAGO")
	public String anioPago;
	
	@Column(name="IDPAGOS_RUTCLIENTE")
	public int idPagos_rutCliente;
	
	
	
	public Pagos() {
		
	}



	public Pagos(int idPagos, String fechaPago, int montoPago, String mesPago, String anioPago, int idPagos_rutCliente) {
		super();
		this.idPagos = idPagos;
		this.fechaPago = fechaPago;
		this.montoPago = montoPago;
		this.mesPago = mesPago;
		this.anioPago = anioPago;
		this.idPagos_rutCliente = idPagos_rutCliente;
	}



	public int getIdPagos() {
		return idPagos;
	}



	public void setIdPagos(int idPagos) {
		this.idPagos = idPagos;
	}



	public String getFechaPago() {
		return fechaPago;
	}



	public void setFechaPago(String fechaPago) {
		this.fechaPago = fechaPago;
	}



	public int getMontoPago() {
		return montoPago;
	}



	public void setMontoPago(int montoPago) {
		this.montoPago = montoPago;
	}



	public String getMesPago() {
		return mesPago;
	}



	public void setMesPago(String mesPago) {
		this.mesPago = mesPago;
	}



	public String getAnioPago() {
		return anioPago;
	}



	public void setAnioPago(String anioPago) {
		this.anioPago = anioPago;
	}



	public int getIdPagos_rutCliente() {
		return idPagos_rutCliente;
	}



	public void setIdPagos_rutCliente(int idPagos_rutCliente) {
		this.idPagos_rutCliente = idPagos_rutCliente;
	}


	
}