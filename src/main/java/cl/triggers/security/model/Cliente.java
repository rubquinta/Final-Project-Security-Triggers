package cl.triggers.security.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="CLIENTE")
public class Cliente{
	
	
	@Column(name="RUTCLIENTE")
	private int rut;
	@Column(name="CLINOMBRES")
	private String nombres;
	@Column(name="CLIAPELLIDOS")
	private String apellidos;
	@Column(name="CLITELEFONO")
	private String telefono;
	@Column(name="CLIAFP")
	private String afp;
	@Column(name="CLISISTEMASALUD")
	private String sistemaSalud;
	@Column(name="CLIDIRECCION")
	private String direccion;
	@Column(name="CLICOMUNA")
	private String comuna;
	@Column(name="CLIEDAD")
	private int edad;  
	@Id
	@Column(name="cliente_runusuario")
	private int cliente_runUsuario;
	
	
	public Cliente() {
		
	}
		



	public Cliente(int rut, String nombres, String apellidos, String telefono, String afp, String sistemaSalud,
			String direccion, String comuna, int edad, int cliente_runUsuario) {
		super();
		this.rut = rut;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.afp = afp;
		this.sistemaSalud = sistemaSalud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
		this.cliente_runUsuario = cliente_runUsuario;
	}




	public int getRut() {
		return rut;
	}
	public void setRut(int rut) {
		this.rut = rut;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getTelefono() {
		return telefono;
	}
	
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getAfp() {
		return afp;
	}
	public void setAfp(String afp) {
		this.afp = afp;
	}
	public String getSistemaSalud() {
		return sistemaSalud;
	}
	public void setSistemaSalud(String sistemaDeSaludCliente) {
		this.sistemaSalud = sistemaDeSaludCliente;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getComuna() {
		return comuna;
	}
	public void setComuna(String comuna) {
		this.comuna = comuna;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	
	public int getCliente_runUsuario() {
		return cliente_runUsuario;
	}




	public void setCliente_runUsuario(int cliente_runUsuario) {
		this.cliente_runUsuario = cliente_runUsuario;
	}

	 
	
	
}