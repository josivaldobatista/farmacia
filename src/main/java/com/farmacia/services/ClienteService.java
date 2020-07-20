package com.farmacia.services;

import java.util.List;
import java.util.Optional;

import com.farmacia.domains.Cliente;
import com.farmacia.repositories.ClienteRepository;
import com.farmacia.services.exceptions.ObjectNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClienteService {
  
  @Autowired
  private ClienteRepository repo;

  public List<Cliente> findAll() {
    return repo.findAll();
  }

  public Cliente findById(Integer id) {
    Optional<Cliente> obj = repo.findById(id);
    return obj.orElseThrow(() -> new ObjectNotFoundException(
      "Objeto não encontrado! ID: " + id + ", Tipo: "+ Cliente.class.getName()));
  }
}