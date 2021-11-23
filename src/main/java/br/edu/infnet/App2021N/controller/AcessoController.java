package br.edu.infnet.App2021N.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import br.edu.infnet.App2021N.service.UsuarioService;


@Controller
public class AcessoController {
	
	@Autowired
    private UsuarioService usuarioService;
	    

	@PostMapping(value = "/login")
	public String telaIndex(Model model, @RequestParam("email") String email, @RequestParam("senha") String senha){
		if (usuarioService.autenticacao(email, senha)!= null) {
			
			return "index";
			
		} else {
			model.addAttribute("msg", "Não foi possível se autenticar, por favor digite novamente!");
			return "login";
		}
    }
}
	
	

