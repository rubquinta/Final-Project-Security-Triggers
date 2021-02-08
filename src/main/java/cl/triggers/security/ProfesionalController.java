package cl.triggers.security;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cl.triggers.security.model.Asesorias;
import cl.triggers.security.model.Profesional;
import cl.triggers.security.model.Usuario;
import cl.triggers.security.model.Visita;
import cl.triggers.security.services.IAdministrativoService;
import cl.triggers.security.services.IProfesionalService;

@Controller
public class ProfesionalController {
	
	
	@Autowired
	IProfesionalService profServ;
	
	@Autowired
	IAdministrativoService usuarioServ;
	
	
	@RequestMapping(value="/listadovisitas", method = RequestMethod.GET)
	public String listarVisitas(Model model) {
		 		
		model.addAttribute("visita", profServ.getAll());
						
		return "listadovisitas";
		
	}
	

	@RequestMapping(value = "/crearvisita", method = RequestMethod.GET)
	public String crearVisita(Model model){
		 
		model.addAttribute("clientes", usuarioServ.getAllClientes());
		
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
	
	@RequestMapping(value = "/crearasesoria", method = RequestMethod.GET)
	public String crearAsesoria(Model model) {
		
		model.addAttribute("clientes", usuarioServ.getAllClientes());
		
		model.addAttribute("profess", usuarioServ.getAllProf());
		
		return "crearasesoria";
	}
	
	@RequestMapping( value = "/crearasesoria", method = RequestMethod.POST)
	public String crearAsesoria(@RequestParam("codigounico") int codigounico,
			@RequestParam("fecharealizacion") String fecharealizacion,
			@RequestParam("motivoasesoria") String motivoasesoria,
			@RequestParam("cliente_runUsuario") int cliente_runUsuario,
			@RequestParam("prof_runUsuario") int prof_runUsuario) {
		
		profServ.saveAse(new Asesorias(codigounico, fecharealizacion, motivoasesoria,
				cliente_runUsuario, prof_runUsuario));
		
		return "redirect:/listarasesoria";
		
	}
	
	@RequestMapping(value = "/listarasesoria", method = RequestMethod.GET)
	public String listarAsesoria(Model model ) {
		
		model.addAttribute("clientes", usuarioServ.getAllClientes());
		
		model.addAttribute("prof", usuarioServ.getAllProf());
		 
		model.addAttribute("asesorias", profServ.getAllAses());
			
		return "listadoasesorias";
	}


}
