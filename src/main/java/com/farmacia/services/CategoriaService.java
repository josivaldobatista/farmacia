package com.farmacia.services;

import java.util.List;
import java.util.Optional;

import com.farmacia.domains.Categoria;
import com.farmacia.repositories.CategoriaRepository;
import com.farmacia.services.exceptions.DataIntegrityException;
import com.farmacia.services.exceptions.ObjectNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
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
    return obj.orElseThrow(() -> new ObjectNotFoundException(
      "Objeto não encontrado! ID: " + id + ", Tipo: " + Categoria.class.getName()));
  }

  public Categoria insert(Categoria obj) {
    obj.setId(null);
    return repo.save(obj);
  }

  public Categoria update(Categoria obj) {
    findById(obj.getId());
    return repo.save(obj);
  }

  public void delete(Integer id) {
    findById(id);
    try {
      repo.deleteById(id);
    } catch (DataIntegrityViolationException e) {
      throw new DataIntegrityException("Não é possivel excluir uma Categoria que possui produtos!");
    }
  }

}