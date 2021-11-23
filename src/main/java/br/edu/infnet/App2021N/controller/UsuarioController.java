package br.edu.infnet.App2021N.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.App2021N.model.Usuario;
import br.edu.infnet.App2021N.service.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping(value = "/")
	public String telaIndex() {
		return "index";
	}
	
	
	@PostMapping(value = "/index")
	public String telaConfirmacao(Model model, Usuario usuario) {
		
		usuarioService.incluir(usuario);
		
		model.addAttribute("nome", usuario.getNome());
		model.addAttribute("usuarioLista", usuarioService.obterLista());
		
		return "confirmacao";
	}
	
	@GetMapping(value = "/login")
	public String telaLogin(Usuario usuario) {
		return "login";
	}
}
