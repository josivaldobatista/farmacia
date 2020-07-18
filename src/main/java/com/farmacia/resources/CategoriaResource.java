package com.farmacia.resources;

import java.util.List;

import com.farmacia.domains.Categoria;
import com.farmacia.services.CategoriaService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/categorias")
public class CategoriaResource {

  @Autowired
  private CategoriaService service;

  @GetMapping
  private ResponseEntity<List<Categoria>> findAll() {
    List<Categoria> obj = service.findAll();
    return ResponseEntity.ok().body(obj);
  }  
}