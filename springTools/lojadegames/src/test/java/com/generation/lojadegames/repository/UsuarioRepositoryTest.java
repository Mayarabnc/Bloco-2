package com.generation.lojadegames.repository;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

import com.generation.lojadegames.model.Usuario;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class UsuarioRepositoryTest {
	
	@Autowired
	private UsuarioRepository repository;
	
	@BeforeAll
	void start() {
		
		repository.save(new Usuario(0L, "Maiar Silva", "isadora@gmail.com", "51 e pinga", "https://i.imgur.com/FETvs2O.jpg"));
		
		repository.save(new Usuario(0L, "Michael Silva", "michaeltrimundial@gmail.com", "nunca fui ", "https://i.imgur.com/FETvs2O.jpg"));

		repository.save(new Usuario(0L, "Brocco Silva", "broco@gmail.com", "broccolis", "https://i.imgur.com/FETvs2O.jpg"));

		repository.save(new Usuario(0L, "Mayara Cabral", "will31smith@gmail.com", "cenoura12345", "https://i.imgur.com/FETvs2O.jpg"));
	}
	
	@Test
	@DisplayName("Teste para retornar um usuário")
	public void RetornaUmUsuario() {
		Optional<Usuario> usuario = repository.findByUsuario("will31smith@gmail.com");
		assertTrue(usuario.get().getUsuario().equals("will31smith@gmail.com"));
	}
	
	@Test
	@DisplayName("Teste que retorna 3 usuários")
	public void RetornaTresUsuarios( ) {
		List<Usuario> listadeUsuarios =
	}
	
}
