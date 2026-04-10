package com.csc340_asgmt3.curdapi;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/characters")
public class CharacterUiController {

    private final CharacterService characterService;

    public CharacterUiController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/add")
    public String newCharacterForm(Model model) {
        model.addAttribute("character", new Character());
        model.addAttribute("title", "Add New Character");
        return "new-character-form";
    }

    @PostMapping("/")
    public String createCharacter(Character character) {
        Character newCharacter = characterService.createCharacter(character);
        if (newCharacter != null) {
            return "redirect:/characters/" + newCharacter.getCharacterId();
        } else {
            return "redirect:/characters/add?error=true";
        }
    }


    @GetMapping({"/", ""})
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", characterService.getAllCharacters());
        model.addAttribute("title", "All Characters");
        return "character-list";
    }

    @GetMapping("/{characterId}")
    public String getCharacterById(@PathVariable("characterId") Long characterId, Model model) {
        Character character = characterService.getCharacterById(characterId);
        if (character != null) {
            model.addAttribute("character", character);
            model.addAttribute("title", "Character Details");
            return "character-details";
        } else {
            model.addAttribute("errorMessage", "Character not found");
            model.addAttribute("title", "Error");
            return "error";
        }
    }

    @GetMapping("/updateForm/{characterId}")
    public String showUpdateForm(@PathVariable Long characterId, Model model) {
        Character character = characterService.getCharacterById(characterId);
        model.addAttribute("character", character);
        model.addAttribute("title", "Update Character: " + characterId);
        return "character-update";
    }

    @PostMapping("/update/{characterId}")
    public String updateCharacter(@PathVariable Long characterId, Character character) {
        characterService.updateCharacter(characterId, character);
        return "redirect:/characters/" + characterId;
    }

    @GetMapping("/delete/{characterId}")
    public String deleteCharacter(@PathVariable Long characterId) {
        characterService.deleteCharacter(characterId);
        return "redirect:/characters/";
    }

}
