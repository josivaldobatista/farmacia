package com.farmacia.services;

import java.util.List;
import java.util.Optional;

import com.farmacia.domains.Pedido;
import com.farmacia.repositories.PedidoRepository;
import com.farmacia.services.exceptions.ObjectNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PedidoService {
  
  @Autowired
  private PedidoRepository repo;

  public List<Pedido> findAll() {
    return repo.findAll();
  }

  public Pedido FindById(Integer id) {
    Optional<Pedido> obj = repo.findById(id);
    return obj.orElseThrow(() -> new ObjectNotFoundException(
      "Objeto não encontrado! ID: " + id + ", Tipo: " + Pedido.class.getName()));
  }
}