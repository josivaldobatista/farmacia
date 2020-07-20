package com.farmacia.resources;

import java.util.List;

import com.farmacia.domains.Pedido;
import com.farmacia.services.PedidoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/pedidos")
public class PedidoResource {
  
  @Autowired
  private PedidoService service;

  @GetMapping
  public ResponseEntity<List<Pedido>> findAll() {
    List<Pedido> list = service.findAll();
    return ResponseEntity.ok().body(list);
  }

  @GetMapping("/{id}")
  public ResponseEntity<Pedido> findById(@PathVariable Integer id) {
    Pedido obj = service.FindById(id);
    return ResponseEntity.ok().body(obj);
  }
}