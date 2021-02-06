package cl.triggers.security;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
}
