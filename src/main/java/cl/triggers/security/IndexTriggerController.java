package cl.triggers.security;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cl.triggers.security.model.Capacitacion;
import cl.triggers.security.repositorio.ICapacitacionRepositorio;


@Controller
public class IndexTriggerController {
	
	
	private static final Logger LOGGER = LoggerFactory.getLogger(IndexTriggerController.class);
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(){
		 
		
		return "index";
	}
	
	
	@RequestMapping(value = "/contacto", method = RequestMethod.GET)
	public String contact() {
		
		
		return "contacto";
	}
	

	@RequestMapping(value="/contacto", method = RequestMethod.POST)
	public void contact(@RequestParam("nombre") String nombre, @RequestParam("email") String email, 
			@RequestParam("telefono") int telefono, @RequestParam("mensaje") String mensaje) {
		
		LOGGER.info("Informacion de posible contacto: " + "\nNombre: " +
				nombre + "\nemail: " + email + "\nTelefono: " + telefono + "\nMensaje: "
				+mensaje);
		
		
		
	}
	
	 

		@RequestMapping(value="/login")
		public String login() {
			
			return "login";
		}
		
		@RequestMapping(value="/error")
		public String errorLogin(Model modelo) {
			
			System.out.println("Error de login!!");
			
			modelo.addAttribute("error", "true");
			
			return "login";
		}
		
		@RequestMapping(value="/logoutsucces")
		public String logout() {
			
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			
			if(auth != null) {
				
				SecurityContextHolder.getContext().setAuthentication(null);
			}
			
			return "logout";
		}
		
		@RequestMapping(value="/forbidden")
		public String noPermitido() {
			return "forbidden";
		}
	
	
}
