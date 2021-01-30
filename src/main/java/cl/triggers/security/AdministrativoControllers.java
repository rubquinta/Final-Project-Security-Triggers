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

 
import cl.triggers.security.model.Cliente;
import cl.triggers.security.model.Usuario;
import cl.triggers.security.repositorio.*;

@Controller
public class AdministrativoControllers {

	private static final Logger LOGGER = LoggerFactory.getLogger(AdministrativoControllers.class);

@Autowired
IUsuariosRepositorio usuarioRepositorio;

@Autowired
IClientesRepositorio clienteRepositorio;
 

	@RequestMapping(value = "/crearusuario", method = RequestMethod.GET)
	public String crearUsuario(){
		 
		
		return "crearusuario";
	}
	
	@RequestMapping(value = "/crearusuario", method = RequestMethod.POST, params="select=Cliente")
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
			@RequestParam("edad") int edad
			) {
		
		Usuario usr = new Usuario( run, nombre, fechaNacimiento, tipoUsuario);
		
		usuarioRepositorio.save(usr);
		
		
		Cliente cli = new Cliente(rutCliente, nombresCliente, apellidosCliente, telefonoCliente, 
				afp, sistemadesalud, direccion, comuna, edad, run);
		
		clienteRepositorio.save(cli);
				
		return "redirect:/listadousuarios";
	}
	

	@RequestMapping(value="/listadousuarios", method = RequestMethod.GET)
	public String listarUsuarios(Model model) {
		
		List<Usuario> listausu =   usuarioRepositorio.findAll();
		
		model.addAttribute("usuarios", listausu);
		
				
		return "listadousuarios";
	}
	
	@RequestMapping(value = "/editar/Cliente/{cliente_runUsuario}", method = RequestMethod.GET)
	public String editarCliente(Model model, @PathVariable("cliente_runUsuario") int cliente_runUsuario ) {
		
		
		
		Cliente cli = clienteRepositorio.findById(cliente_runUsuario).get();
		
		LOGGER.info(cli.toString());
		
		model.addAttribute(cli);
		return  "editarcliente";
	}
	
		

	
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
	
	
	 
}
