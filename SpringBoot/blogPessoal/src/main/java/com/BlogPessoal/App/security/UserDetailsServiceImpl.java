package com.BlogPessoal.App.security;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.BlogPessoal.App.model.Usuario;
import com.BlogPessoal.App.repository.UsuarioRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UsuarioRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String Username) throws UsernameNotFoundException {
		Optional<Usuario> user = userRepository.findByUsuario(Username);
		user.orElseThrow(() -> new UsernameNotFoundException(Username + " not found."));
		return user.map(UserDetailsImpl::new).get();
	}

}
