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

import cl.triggers.security.model.Asistentes;
import cl.triggers.security.model.Capacitacion;
import cl.triggers.security.repositorio.ICapacitacionRepositorio;
import cl.triggers.security.services.IClienteService;

@Controller
public class ClienteControllers {
	
 
	
	@Autowired
	IClienteService cliServ;
	 


	@RequestMapping(value="/listarcapacitacion", method = RequestMethod.GET)
	public String inicio(Model model) {
		 
		
		model.addAttribute("capa", cliServ.getAll());
		 
		
		return "listarcapacitaciones";
		
	}
	
	@RequestMapping(value="/crearcapacitacion", method = RequestMethod.GET)
	public String capa () {
		
		return "crearcapacitacion";
		
	}
	
	@RequestMapping(value = "/crearcapacitacion", method = RequestMethod.POST)
	public String capa (  @RequestParam("idCapacitacion") int idCapacitacion,
			@RequestParam("rutCliente") int rutCliente,
		@RequestParam("diaCapacitacion") String diaCapacitacion, 
		@RequestParam("horaCapacitacion") String horaCapacitacion, 
		@RequestParam("lugarCapacitacion") String lugarCapacitacion, 
		@RequestParam("duracionCapacitacion") String duracionCapacitacion,
		@RequestParam ("cantidadAsistentes") int cantidadAsistentes){
		
				
		cliServ.saveOne( new Capacitacion(idCapacitacion, rutCliente, diaCapacitacion, 
				horaCapacitacion, lugarCapacitacion, duracionCapacitacion, cantidadAsistentes));
		 
		return "redirect:/listarcapacitacion";
	}
	
	@RequestMapping( value = "/administrarasistentes", method = RequestMethod.GET)
	public String crearAsist(Model model) {
		
		model.addAttribute("asist", cliServ.getAllAsist());
		
		model.addAttribute("capa", cliServ.getAll());
		
		return "administrarasistentes";
	}
	
	@RequestMapping( value = "/administrarasistentes", method = RequestMethod.POST)
	public String crearAsist(@RequestParam("runasistente") int runAsistente,
			@RequestParam("asistnombrecompleto") String asistnombrecompleto,
			@RequestParam("edadasist") int edadasist,
			@RequestParam("emailasist") String emailasist,
			@RequestParam("telasist") int telasist,
			@RequestParam("capacitacion") int capacitacion) {
		
		 
		cliServ.saveOneAsist(new Asistentes(runAsistente, asistnombrecompleto, edadasist,
				emailasist, telasist, capacitacion  ));
		
		return "redirect:/administrarasistentes";
	}
	
	@RequestMapping( value="/eliminarasist/{runasist}", method = RequestMethod.GET)
	public String eliminarAsist(@PathVariable("runasist") int runasist) {
		
		cliServ.deleteOneAsist(runasist);
		
		return "redirect:/administrarasistentes";
	}
}
