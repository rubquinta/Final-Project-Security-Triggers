package cl.triggers.security;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.triggers.security.model.Administrativo;
import cl.triggers.security.model.Cliente;
import cl.triggers.security.model.Pagos;
import cl.triggers.security.model.Profesional;
import cl.triggers.security.model.Usuario;
import cl.triggers.security.repositorio.*;

import cl.triggers.security.services.*;

 
@Controller
public class AdministrativoControllers {

	private static final Logger LOGGER = LoggerFactory.getLogger(AdministrativoControllers.class);
 

@Autowired
IAdministrativoService usuServ;

 
	//Metodos para crear usuarios

		//	Metodo para traer formulario
	@RequestMapping(value = "/crearusuario", method = RequestMethod.GET)
	public String crearUsuario(){
		 
		
		return "crearusuario";
		
	}
	
		
	
	@RequestMapping(value = "/crearusuario", method = RequestMethod.POST, params="select=Cliente")
	public String crearUsuarioAdm( @RequestParam("run") int run, @RequestParam("nombre") String nombre, 
			@RequestParam("fechaNacimiento") String fechaNacimiento, @RequestParam("select") String tipoUsuario, 
			@RequestParam("rutCliente") int rutCliente,
			@RequestParam("nombresCliente") String nombresCliente,
			@RequestParam("apellidosCliente") String apellidosCliente,
			@RequestParam("telefonoCliente") String telefonoCliente,
			@RequestParam("afp") String afp,
			@RequestParam("sistemadesalud") String sistemadesalud,
			@RequestParam("direccion") String direccion,
			@RequestParam("comuna") String comuna,
			@RequestParam("edad") int edad) 
			{
		 
		
		usuServ.saveOne(new Usuario( run, nombre, fechaNacimiento, tipoUsuario));
		
 
		
		usuServ.saveOne(new Cliente(rutCliente, nombresCliente, apellidosCliente, telefonoCliente, 
				afp, sistemadesalud, direccion, comuna, edad, run));
				
		return "redirect:/listadousuarios";
	}
	
	
		//Metodo para enviar formulario con datos tipo administrativo
	@RequestMapping(value = "/crearusuario", method = RequestMethod.POST, params="select=Administrativo")
	public String crearUsuarioAdm( @RequestParam("run") int run, @RequestParam("nombre") String nombre, 
			@RequestParam("fechaNacimiento") String fechaNacimiento, @RequestParam("select") String tipoUsuario, 
			@RequestParam("area") String area,
			@RequestParam("expPrevia") String experienciaPrevia			
			
			) {
		 
		
		usuServ.saveOne(new Usuario( run, nombre, fechaNacimiento, tipoUsuario));
		 
		
		usuServ.saveOne(new Administrativo(run, area, experienciaPrevia));
				
		return "redirect:/listadousuarios";
	}
	
	//Metodo para enviar formulario con datos tipo profesional
	@RequestMapping(value = "/crearusuario", method = RequestMethod.POST, params="select=Profesional")
	public String crearUsuarioProf( @RequestParam("run") int run, @RequestParam("nombre") String nombre, 
			@RequestParam("fechaNacimiento") String fechaNacimiento, @RequestParam("select") String tipoUsuario, 
			@RequestParam("titulo") String titulo,
			@RequestParam("fechaIng") String fechaIngreso
			) {
		 
		
		usuServ.saveOne(new Usuario( run, nombre, fechaNacimiento, tipoUsuario));
		 
		
		usuServ.saveOne(new Profesional(run, titulo, fechaIngreso));
				
		return "redirect:/listadousuarios";
	}
	
	//Metodo para LISTAR todos los usuario, solo indicando datos basicos
	@RequestMapping(value="/listadousuarios", method = RequestMethod.GET)
	public String listarUsuarios(Model model) {
		
		  
		
		model.addAttribute("usuarios", usuServ.getAll());
		
				
		return "listadousuarios";
	}
	
	//Metodo para traer formulario lleno con datos a editar de tipo Cliente
	@RequestMapping(value = "/editar/Cliente/{cliente_runUsuario}", method = RequestMethod.GET)
	public String editarCliente(Model model, @PathVariable("cliente_runUsuario") int cliente_runUsuario ) {
		
	 
		
		model.addAttribute("usuario", usuServ.getOne(cliente_runUsuario));
		
		model.addAttribute("cliente", usuServ.getOneCliente(cliente_runUsuario));
		
		return  "editarcliente";
	}
	
		

	//Metodo para enviar formulario con datos modificados a editar de tipo Cliente
	@RequestMapping(value = "/editar/Cliente", method = RequestMethod.POST )
	public String editarCliente( @RequestParam("run") int run,  
			@RequestParam("rutCliente") int rutCliente,
			@RequestParam("nombresCliente") String nombresCliente,
			@RequestParam("apellidosCliente") String apellidosCliente,
			@RequestParam("telefonoCliente") String telefonoCliente,
			@RequestParam("afp") String afp,
			@RequestParam("sistemadesalud") String sistemadesalud,
			@RequestParam("direccion") String direccion,
			@RequestParam("comuna") String comuna,
			@RequestParam("edad") int edad
			) {
		
		
		usuServ.saveOne(new Cliente(rutCliente, nombresCliente, apellidosCliente, telefonoCliente, 
				afp, sistemadesalud, direccion, comuna, edad, run ));
				
		return "redirect:/listadousuarios";
	}
	

	//Metodo para traer formulario lleno con datos a editar de tipo Profesional
	
	@RequestMapping(value = "/editar/Profesional/{run}", method = RequestMethod.GET)
	public String editarProf(Model model, @PathVariable("run") int prof_runUsuario) {
		
			 

		model.addAttribute("usuario", usuServ.getOne(prof_runUsuario));
		
		model.addAttribute("prof", usuServ.getOneProf(prof_runUsuario));
		
		return  "editarprofesional";
	}
	
	//Método para enviar formulario con datos modificados a editar de tipo Profesional
	
	@RequestMapping(value = "/editar/Profesional", method = RequestMethod.POST )
	public String editarProf(@RequestParam("run") int prof_runUsuario,
			@RequestParam("titulo") String titulo,
			@RequestParam("fechaIng") String fechaIngreso			 
			) {
		 

		usuServ.saveOne(new Profesional(prof_runUsuario, titulo, fechaIngreso));
				
		return "redirect:/listadousuarios";
	}
	

	//Metodo para traer formulario lleno con datos a editar de tipo Administrativo
	
	@RequestMapping(value = "/editar/Administrativo/{adm_runUsuario}", method = RequestMethod.GET)
	public String editarAdm(Model model, @PathVariable("adm_runUsuario") int adm_runUsuario) {
		
		

		model.addAttribute("usuario", usuServ.getOne(adm_runUsuario));
		
		model.addAttribute("adm", usuServ.getOneAdm(adm_runUsuario));
		
		
		return  "editaradministrativo";
	}
	
	//Método para enviar formulario con datos modificados a editar de tipo Administrativo
	
	@RequestMapping(value = "/editar/Administrativo", method = RequestMethod.POST )
	public String editarAdm( @RequestParam("run") int prof_runUsuario,
			@RequestParam("area") String area,
			@RequestParam("expPrevia") String expPrevia			 
			) {
			 
		
		usuServ.saveOne(new Administrativo(prof_runUsuario, area, expPrevia));
				
		return "redirect:/listadousuarios";
	} 
	
	
	
	// Metodos para eliminar ususario
	
	@RequestMapping(value="/eliminar/{tipoUsuario}/{run}")
	public String borrarCliente(@PathVariable("tipoUsuario") String tipoUsuario,
	@PathVariable("run") int runUsuario) {
		
		switch(tipoUsuario) {
		
		case "Cliente":
			
			usuServ.deleteOneCliente(runUsuario);
			
			break;
		case "Profesional":
			
			usuServ.deleteOneProf(runUsuario);
			
			break;
			
		case "Administrativo":
			
			usuServ.deleteOneAdm(runUsuario);
			
			break;
		
		}
		
		usuServ.deleteOneU(runUsuario);
		
		return "redirect:/listadousuarios";
	}
	

	@RequestMapping(value="/listarpagos", method = RequestMethod.GET)
	public String listarPagos(Model model) {
	 
		
		model.addAttribute("pagos", usuServ.getAllPagos());
		
		return "listadopagos";
		
		
	}
	
	@RequestMapping(value = "/crearpago", method = RequestMethod.GET)
	public String crearpago(){
		 
		
		return "crearpago";
	}
	
		
	
	@RequestMapping(value = "/crearpago", method = RequestMethod.POST)
	public String crearpago(@RequestParam("idPagos") int idPagos, 
			@RequestParam("fechaPago") String fechaPago, 
			@RequestParam("montoPago") int montoPago, 
			@RequestParam("mesPago") String mesPago, 
			@RequestParam("anioPago") String anioPago,
			@RequestParam("idPagos_rutCliente") int idPagos_rutCliente)
			
			{
		 		
		usuServ.saveOne(new Pagos(idPagos, fechaPago, montoPago, mesPago, anioPago, idPagos_rutCliente));
				
		return "redirect:/listarpagos";
	}
	
	
	
	 
}
