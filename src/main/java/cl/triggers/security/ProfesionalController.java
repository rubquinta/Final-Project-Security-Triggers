package cl.triggers.security;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cl.triggers.security.model.Visita;
import cl.triggers.security.repositorio.IVisitaRepositorio;
import cl.triggers.security.services.IProfesionalService;

@Controller
public class ProfesionalController {
	
	
	@Autowired
	IProfesionalService profServ;
	
	
	@RequestMapping(value="/listadovisitas", method = RequestMethod.GET)
	public String listarVisitas(Model model) {
		 		
		model.addAttribute("visita", profServ.getAll());
						
		return "listadovisitas";
		
	}
	

	@RequestMapping(value = "/crearvisita", method = RequestMethod.GET)
	public String crearVisita(){
		 
		
		return "crearvisita";
	}
	
	@RequestMapping(value = "/crearvisita", method = RequestMethod.POST)
	public String crearVisita(@RequestParam("idVisita") int idVisita, @RequestParam("rutCliente") int rutCliente,
			@RequestParam("fecha") String fecha, @RequestParam("hora") String hora, @RequestParam("lugar") String lugar,
			@RequestParam("comentarios") String comentarios) {
		 
		
		profServ.saveOne(new Visita(idVisita, rutCliente, fecha, hora, lugar, comentarios));
				
		return "redirect:/listadovisitas";
	}
	
	@RequestMapping(value = "/responderchecklist", method = RequestMethod.GET)
	public String responderchecklist( ) {
		 		 
		return "responderchecklist";
	}


}
