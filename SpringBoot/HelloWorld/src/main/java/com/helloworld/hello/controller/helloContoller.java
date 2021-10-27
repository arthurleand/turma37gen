package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class helloContoller {
	
	@GetMapping
	public String hello() {
		return "Hello Gen!!";
	}
	@GetMapping("/paimanja")
	public String paiManja() {
		return "Pai manja de Spring!!";
	}
}
