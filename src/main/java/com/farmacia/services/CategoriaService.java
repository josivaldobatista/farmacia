package com.farmacia.services;

import java.util.List;
import java.util.Optional;

import com.farmacia.domains.Categoria;
import com.farmacia.repositories.CategoriaRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoriaService {

  @Autowired
  private CategoriaRepository repo;

  public List<Categoria> findAll() {
      return repo.findAll();
  }

  public Categoria findById(Integer id) {
    Optional<Categoria> obj = repo.findById(id);
    return obj.orElse(null);
  }
}