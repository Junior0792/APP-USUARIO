package br.edu.infnet.App2021N.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.App2021N.model.Usuario;
import br.edu.infnet.App2021N.repository.UsuarioRepository;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepository;

	public Usuario autenticacao(String email, String senha) {
		return usuarioRepository.autenticacao(email, senha);
	}
	
	public void incluir(Usuario usuario) {
        usuarioRepository.save(usuario);
	}

	public List<Usuario> obterLista(){
		return (List<Usuario>) usuarioRepository.findAll();
	}
  
}
	
	
	



