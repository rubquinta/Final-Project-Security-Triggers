package cl.triggers.security;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.triggers.security.model.Administrativo;
import cl.triggers.security.model.Cliente;
import cl.triggers.security.model.Profesional;
import cl.triggers.security.model.Usuario;
import cl.triggers.security.repositorio.*;

 
@Controller
public class AdministrativoControllers {

	private static final Logger LOGGER = LoggerFactory.getLogger(AdministrativoControllers.class);

@Autowired
IUsuariosRepositorio usuarioRepositorio;

@Autowired
IClientesRepositorio clienteRepositorio;

@Autowired
IAdministrativoRepositorio admRepositorio;

@Autowired
IProfesionalRepositorio profRepositorio;
 
	//Metodos para crear usuarios

		//	Metodo para traer formulario
	@RequestMapping(value = "/crearusuario", method = RequestMethod.GET)
	public String crearUsuario(){
		 
		
		return "crearusuario";
	}
	
		
	/*
		//Metodo para enviar formulario con datos tipo cliente
	@RequestMapping(value = "/crearusuario", method = RequestMethod.POST)
	public String crearUsuario( @RequestParam("run") int run, @RequestParam("nombre") String nombre, 
			@RequestParam("fechaNacimiento") String fechaNacimiento, @RequestParam("select") String tipoUsuario, 
			
			@RequestParam("rutCliente") int rutCliente,
			@RequestParam("nombresCliente") String nombresCliente,
			@RequestParam("apellidosCliente") String apellidosCliente,
			@RequestParam("telefonoCliente") String telefonoCliente,
			@RequestParam("afp") String afp,
			@RequestParam("sistemadesalud") String sistemadesalud,
			@RequestParam("direccion") String direccion,
			@RequestParam("comuna") String comuna,
			@RequestParam("edad") int edad,
					
			//ADMINISTRATIVO
			@RequestParam("adm_runUsuario") int adm_runUsuario,
			@RequestParam("area") String area,
			@RequestParam("experienciaPrevia") String experienciaPrevia,
			
			//PROFESIONAL
			@RequestParam("PROFRUN") int prof_runUsuario,
			@RequestParam("PROFTITULO") String titulo,
			@RequestParam("PROFFECHAIN") String fechaIngreso		
			
			) {
		
		Usuario usr = new Usuario( run, nombre, fechaNacimiento, tipoUsuario);
		
		usuarioRepositorio.save(usr);
		
		switch(tipoUsuario){
			
			case "Cliente":				
					
					Cliente cli = new Cliente(rutCliente, nombresCliente, apellidosCliente, telefonoCliente, 
							afp, sistemadesalud, direccion, comuna, edad, run);
					
					clienteRepositorio.save(cli);				
			
				break;
				
			case "Administrativo":
				
				Administrativo adm= new Administrativo(adm_runUsuario, area, experienciaPrevia);
				
				admRepositorio.save(adm);
				
				break;
			case "Profesional":
				
				Profesional prof = new Profesional(prof_runUsuario, titulo, fechaIngreso);
				
				profRepositorio.save(prof);
				
				break;
				
		}		
				
		return "redirect:/listadousuarios";
	}*/
	
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
		
		Usuario usr = new Usuario( run, nombre, fechaNacimiento, tipoUsuario);
		
		usuarioRepositorio.save(usr);
		

		Cliente cli = new Cliente(rutCliente, nombresCliente, apellidosCliente, telefonoCliente, 
				afp, sistemadesalud, direccion, comuna, edad, run);
		
		clienteRepositorio.save(cli);
				
		return "redirect:/listadousuarios";
	}
	
	
		//Metodo para enviar formulario con datos tipo administrativo
	@RequestMapping(value = "/crearusuario", method = RequestMethod.POST, params="select=Administrativo")
	public String crearUsuarioAdm( @RequestParam("run") int run, @RequestParam("nombre") String nombre, 
			@RequestParam("fechaNacimiento") String fechaNacimiento, @RequestParam("select") String tipoUsuario, 
			@RequestParam("area") String area,
			@RequestParam("expPrevia") String experienciaPrevia			
			
			) {
		
		Usuario usr = new Usuario( run, nombre, fechaNacimiento, tipoUsuario);
		
		usuarioRepositorio.save(usr);
		
		Administrativo adm= new Administrativo(run, area, experienciaPrevia);
		
		admRepositorio.save(adm);
				
		return "redirect:/listadousuarios";
	}
	
	//Metodo para enviar formulario con datos tipo profesional
	@RequestMapping(value = "/crearusuario", method = RequestMethod.POST, params="select=Profesional")
	public String crearUsuarioProf( @RequestParam("run") int run, @RequestParam("nombre") String nombre, 
			@RequestParam("fechaNacimiento") String fechaNacimiento, @RequestParam("select") String tipoUsuario, 
			@RequestParam("titulo") String titulo,
			@RequestParam("fechaIng") String fechaIngreso
			) {
		
		Usuario usr = new Usuario( run, nombre, fechaNacimiento, tipoUsuario);
		
		usuarioRepositorio.save(usr);
		
		Profesional prof = new Profesional(run, titulo, fechaIngreso);
		
		profRepositorio.save(prof);
				
		return "redirect:/listadousuarios";
	}
	
	//Metodo para LISTAR todos los usuario, solo indicando datos basicos
	@RequestMapping(value="/listadousuarios", method = RequestMethod.GET)
	public String listarUsuarios(Model model) {
		
		List<Usuario> listausu =   usuarioRepositorio.findAll();
		
		model.addAttribute("usuarios", listausu);
		
				
		return "listadousuarios";
	}
	
	//Metodo para traer formulario lleno con datos a editar de tipo Cliente
	@RequestMapping(value = "/editar/Cliente/{cliente_runUsuario}", method = RequestMethod.GET)
	public String editarCliente(Model model, @PathVariable("cliente_runUsuario") int cliente_runUsuario ) {
		
		
		Usuario usr = usuarioRepositorio.findById(cliente_runUsuario).get();
		Cliente cli = clienteRepositorio.findById(cliente_runUsuario).get();
		
		System.out.println("Imprimir objeto cliente:" + cli.toString());
		LOGGER.info(cli.toString());
		
		model.addAttribute("usuario", usr);
		model.addAttribute("cliente", cli);
		
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
		
			
		
		Cliente cli = new Cliente(rutCliente, nombresCliente, apellidosCliente, telefonoCliente, 
				afp, sistemadesalud, direccion, comuna, edad, run );
		
		clienteRepositorio.save(cli);
				
		return "redirect:/listadousuarios";
	}
	

	//Metodo para traer formulario lleno con datos a editar de tipo Profesional
	
	@RequestMapping(value = "/editar/Profesional/{prof_runUsuario}", method = RequestMethod.GET)
	public String editarProf(Model model, @PathVariable("prof_runUsuario") int prof_runUsuario) {
		
		
		Usuario usr = usuarioRepositorio.findById(prof_runUsuario).get();
		Profesional prof = profRepositorio.findById(prof_runUsuario).get();
		
		
		LOGGER.info(prof.toString());
		
		model.addAttribute("usuario", usr);
		model.addAttribute("prof", prof);
		
		return  "editarprofesional";
	}
	
	//Método para enviar formulario con datos modificados a editar de tipo Profesional
	
	@RequestMapping(value = "/editar/Profesional", method = RequestMethod.POST )
	public String editarProf(@RequestParam("run") int prof_runUsuario,
			@RequestParam("titulo") String titulo,
			@RequestParam("fechaIng") String fechaIngreso			 
			) {
		
		Profesional prof = new Profesional(prof_runUsuario, titulo, fechaIngreso);
		
		profRepositorio.save(prof);
				
		return "redirect:/listadousuarios";
	}
	

	//Metodo para traer formulario lleno con datos a editar de tipo Administrativo
	
	@RequestMapping(value = "/editar/Administrativo/{adm_runUsuario}", method = RequestMethod.GET)
	public String editarAdm(Model model, @PathVariable("adm_runUsuario") int adm_runUsuario) {
		
		
		Usuario usr = usuarioRepositorio.findById(adm_runUsuario).get();
		Administrativo adm = admRepositorio.findById(adm_runUsuario).get();	
		
		LOGGER.info(adm.toString());
		
		model.addAttribute("usuario", usr);
		model.addAttribute("adm", adm);
		
		return  "editaradministrativo";
	}
	
	//Método para enviar formulario con datos modificados a editar de tipo Administrativo
	
	@RequestMapping(value = "/editar/Administrativo", method = RequestMethod.POST )
	public String editarAdm( @RequestParam("run") int prof_runUsuario,
			@RequestParam("titulo") String titulo,
			@RequestParam("fechaing") String fechaIngreso			 
			) {
		
		
		Administrativo adm = new Administrativo(prof_runUsuario, titulo, fechaIngreso);
		
		admRepositorio.save(adm);
				
		return "redirect:/listadousuarios";
	} 
	
	
	
	// Metodos para eliminar ususario
	
	@RequestMapping(value="/eliminar/{tipoUsuario}/{run}")
	public String borrarCliente(@PathVariable("tipoUsuario") String tipoUsuario,
	@PathVariable("run") int runUsuario) {
		
		switch(tipoUsuario) {
		
		case "Cliente":
			
			clienteRepositorio.deleteById(runUsuario);;
			
			break;
		case "Profesional":
			
			profRepositorio.deleteById(runUsuario);
			
			break;
			
		case "Administrativo":
			
			admRepositorio.deleteById(runUsuario);
			
			break;
		
		}
		
		usuarioRepositorio.deleteById(runUsuario);
		
		return "redirect:/listadousuarios";
	}
	
	
	 
}
