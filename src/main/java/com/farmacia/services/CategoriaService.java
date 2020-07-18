package com.farmacia.services;

import java.util.List;

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
}