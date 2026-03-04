package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CharacterRepository extends JpaRepository<Character, Long> {

	List<Character> findByNameContainingIgnoreCase(String name);

	List<Character> findByUniverseIgnoreCase(String universe);

	List<Character> findBySpeciesIgnoreCase(String species);
}