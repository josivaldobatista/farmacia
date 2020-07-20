package com.farmacia.resources;

import java.util.List;

import com.farmacia.domains.Cliente;
import com.farmacia.services.ClienteService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/clientes")
public class ClienteResource {

  @Autowired
  private ClienteService service;

  @GetMapping
  public ResponseEntity<List<Cliente>> findAll() {
    List<Cliente> list = service.findAll();
    return ResponseEntity.ok().body(list);
  }

  @GetMapping("/{id}")
  public ResponseEntity<Cliente> findById(@PathVariable Integer id) {
    Cliente obj = service.findById(id);
    return ResponseEntity.ok().body(obj);
  }
}