package com.csc340_asgmt3.curdapi;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class CharacterService {

	private final CharacterRepository characterRepository;

	public CharacterService(CharacterRepository characterRepository) {
		this.characterRepository = characterRepository;
	}

	public List<Character> getAllCharacters() {
		return characterRepository.findAll();
	}

	public Character getCharacterById(Long characterId) {
		return characterRepository.findById(characterId).orElse(null);
	}

	public Character createCharacter(Character character) {
		character.setCharacterId(null);
		return characterRepository.save(character);
	}

	public Character updateCharacter(Long characterId, Character updatedCharacter) {
		Character existingCharacter = getCharacterById(characterId);
		if (existingCharacter == null) {
			return null;
		}

		existingCharacter.setName(updatedCharacter.getName());
		existingCharacter.setDescription(updatedCharacter.getDescription());
		existingCharacter.setUniverse(updatedCharacter.getUniverse());
		existingCharacter.setSpecies(updatedCharacter.getSpecies());
		existingCharacter.setImageUrl(updatedCharacter.getImageUrl());
		return characterRepository.save(existingCharacter);
	}

	public boolean deleteCharacter(Long characterId) {
		if (!characterRepository.existsById(characterId)) {
			return false;
		}
		characterRepository.deleteById(characterId);
		return true;
	}

	public List<Character> getCharactersByUniverse(String universe) {
		return characterRepository.findByUniverseIgnoreCase(universe);
	}

	public List<Character> getCharactersBySpecies(String species) {
		return characterRepository.findBySpeciesIgnoreCase(species);
	}

	public List<Character> searchCharactersByName(String namePart) {
		return characterRepository.findByName(namePart);
	}
}