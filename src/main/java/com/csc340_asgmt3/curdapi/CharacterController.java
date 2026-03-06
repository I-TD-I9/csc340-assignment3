package com.csc340_asgmt3.curdapi;

import java.util.List;

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

	/**
	 * Endpoint to retrieve all characters
	 *
	 * @return Collection containing all characters
	 */
	@GetMapping("/")
	public List<Character> getAllCharacters() {
		return characterService.getAllCharacters();
	}

	/**
	 * Endpoint to retrieve a character by ID
	 *
	 * @param characterId ID of the character to retrieve
	 * @return ResponseEntity containing the requested character, or not found status
	 */
	@GetMapping("/{id}")
	public ResponseEntity<Character> getCharacterById(@PathVariable("id") Long characterId) {
		Character character = characterService.getCharacterById(characterId);
		if (character != null) {
			return ResponseEntity.ok(character);
		}
		return ResponseEntity.notFound().build();
	}

	/**
	 * Endpoint to create a new character
	 *
	 * @param character Request body containing character details
	 * @return ResponseEntity containing the created character
	 */
	@PostMapping("/")
	public ResponseEntity<Character> createCharacter(@RequestBody Character character) {
		Character createdCharacter = characterService.createCharacter(character);
		if (createdCharacter != null) {
			return ResponseEntity.ok(createdCharacter);
		}
		return ResponseEntity.notFound().build();
	}

	/**
	 * Endpoint to update an existing character
	 *
	 * @param characterId ID of the character to update
	 * @param character Request body containing updated character details
	 * @return ResponseEntity containing the updated character, or not found status
	 */
	@PutMapping("/{id}")
	public ResponseEntity<Character> updateCharacter(@PathVariable("id") Long characterId,
			@RequestBody Character character) {
		Character updatedCharacter = characterService.updateCharacter(characterId, character);
		if (updatedCharacter != null) {
			return ResponseEntity.ok(updatedCharacter);
		}
		return ResponseEntity.notFound().build();
	}

	/**
	 * Endpoint to delete a character by ID
	 *
	 * @param characterId ID of the character to delete
	 * @return ResponseEntity with no content on success, or not found status
	 */
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> deleteCharacter(@PathVariable("id") Long characterId) {
		boolean deleted = characterService.deleteCharacter(characterId);
		if (deleted) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.notFound().build();
	}

	/**
	 * Endpoint to retrieve characters by category
	 *
	 * @param category Category to filter by (universe or species)
	 * @param value Value to match in the selected category
	 * @return ResponseEntity containing matching characters, or bad request status
	 */
	@GetMapping("/category/{category}")
	public ResponseEntity<List<Character>> getCharactersByCategory(@PathVariable String category,
			@RequestParam String value) {
		if ("universe".equalsIgnoreCase(category)) {
			return ResponseEntity.ok(characterService.getCharactersByUniverse(value));
		}
		if ("species".equalsIgnoreCase(category)) {
			return ResponseEntity.ok(characterService.getCharactersBySpecies(value));
		}
		return ResponseEntity.badRequest().build();
	}

	/**
	 * Endpoint to search characters by name
	 *
	 * @param namePart Text used to match character names
	 * @return Collection containing all matching the search criteria
	 */
	@GetMapping("/search")
	public List<Character> searchCharactersByName(@RequestParam("name") String namePart) {
		return characterService.searchCharactersByName(namePart);
	}
}