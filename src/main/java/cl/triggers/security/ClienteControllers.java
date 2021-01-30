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

@Controller
public class ClienteControllers {
	

	@Autowired
	ICapacitacionRepositorio capaRepositorio;


	private static final Logger LOGGER = LoggerFactory.getLogger(ClienteControllers.class);
	
	@RequestMapping(value="/listarcapacitacion", method = RequestMethod.GET)
	public String inicio(Model model) {
		
		List<Capacitacion> capa = capaRepositorio.findAll();
		
		model.addAttribute("capa", capa);
		
		
		LOGGER.info(" Metodo listar capacitacion exitoso");
		
		return "listarcapacitaciones";
		
	}
	
	@RequestMapping(value="/crearcapacitacion", method = RequestMethod.GET)
	public String capa () {
		
		return "crearcapacitacion";
		
	}
	
	@RequestMapping(value = "/crearcapacitacion", method = RequestMethod.POST)
	public String capa (  @RequestParam("idCapacitacion") int idCapacitacion, @RequestParam("rutCliente") int rutCliente,
		@RequestParam("diaCapacitacion") String diaCapacitacion, @RequestParam("horaCapacitacion") String horaCapacitacion, 
		@RequestParam("lugarCapacitacion") String lugarCapacitacion, @RequestParam("duracionCapacitacion") String duracionCapacitacion,
		@RequestParam ("cantidadAsistentes") int cantidadAsistentes){
		
				
		Capacitacion capa = new Capacitacion(idCapacitacion, rutCliente, diaCapacitacion, horaCapacitacion, lugarCapacitacion, duracionCapacitacion, cantidadAsistentes);
		
		capaRepositorio.save(capa);
		
		LOGGER.info(" Metodo crear capacitacion exitoso: " + capa.toString());

		return "redirect:/listarcapacitacion";
	}
}
