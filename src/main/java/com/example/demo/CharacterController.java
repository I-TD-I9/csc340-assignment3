package com.example.demo;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/characters")
public class CharacterController {

	private final CharacterService characterService;

	public CharacterController(CharacterService characterService) {
		this.characterService = characterService;
	}

	@GetMapping
	public List<Character> getAllCharacters() {
		return characterService.getAllCharacters();
	}

	@GetMapping("/{id}")
	public ResponseEntity<Character> getCharacterById(@PathVariable("id") Long characterId) {
		Character character = characterService.getCharacterById(characterId);
		if (character != null) {
			return ResponseEntity.ok(character);
		}
		return ResponseEntity.notFound().build();
	}

	@PostMapping
	public ResponseEntity<Character> createCharacter(@RequestBody Character character) {
		Character createdCharacter = characterService.createCharacter(character);
		if (createdCharacter != null) {
			return ResponseEntity.ok(createdCharacter);
		}
		return ResponseEntity.notFound().build();
	}

	@PutMapping("/{id}")
	public ResponseEntity<Character> updateCharacter(@PathVariable("id") Long characterId,
			@RequestBody Character character) {
		Character updatedCharacter = characterService.updateCharacter(characterId, character);
		if (updatedCharacter != null) {
			return ResponseEntity.ok(updatedCharacter);
		}
		return ResponseEntity.notFound().build();
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<Void> deleteCharacter(@PathVariable("id") Long characterId) {
		boolean deleted = characterService.deleteCharacter(characterId);
		if (deleted) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.notFound().build();
	}

	@GetMapping("/category")
	public ResponseEntity<List<Character>> getCharactersByCategory(@RequestParam String category,
			@RequestParam String value) {
		if ("universe".equalsIgnoreCase(category)) {
			return ResponseEntity.ok(characterService.getCharactersByUniverse(value));
		}
		if ("species".equalsIgnoreCase(category)) {
			return ResponseEntity.ok(characterService.getCharactersBySpecies(value));
		}
		return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
	}

	@GetMapping("/search")
	public List<Character> searchCharactersByName(@RequestParam("name") String namePart) {
		return characterService.searchCharactersByName(namePart);
	}
}