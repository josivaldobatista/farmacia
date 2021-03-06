package com.farmacia.resources;

import java.net.URI;
import java.util.List;
import java.util.stream.Collectors;

import com.farmacia.domains.Categoria;
import com.farmacia.dto.CategoriaDTO;
import com.farmacia.services.CategoriaService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

@RestController
@RequestMapping("/categorias")
public class CategoriaResource {

  @Autowired
  private CategoriaService service;

  @GetMapping
  public ResponseEntity<List<CategoriaDTO>> findAll() {
    List<Categoria> list = service.findAll();
    List<CategoriaDTO> listDto = list.stream().map(obj -> new CategoriaDTO(obj)).collect(Collectors.toList());
    return ResponseEntity.ok().body(listDto);
  }

  @GetMapping("/{id}")
  public ResponseEntity<Categoria> findById(@PathVariable Integer id) {
    Categoria obj = service.findById(id);
    return ResponseEntity.ok().body(obj);
  }

  @PostMapping
  public ResponseEntity<Void> insert(@RequestBody Categoria obj) {
    obj = service.insert(obj);
    URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}")
      .buildAndExpand(obj.getId()).toUri();
    return ResponseEntity.created(uri).build();
  }

  @PutMapping("/{id}")
  public ResponseEntity<Void> update(@PathVariable Integer id, @RequestBody Categoria obj) {
    obj.setId(id);
    obj = service.update(obj);
    return ResponseEntity.noContent().build();
  }

  @DeleteMapping("/{id}")
  public ResponseEntity<Void> delete(@PathVariable Integer id) {
    service.delete(id);
    return ResponseEntity.noContent().build();
  }

  @GetMapping("/pages")
  public ResponseEntity<Page<CategoriaDTO>> findPage(
    @RequestParam(value = "page", defaultValue = "0") Integer page,
    @RequestParam(value = "linesPerPage", defaultValue = "24") Integer linesPerPage,
    @RequestParam(value = "orderBy", defaultValue = "nome") String orderBy,
    @RequestParam(value = "direction", defaultValue = "ASC") String direction) {
      Page<Categoria> list = service.findPage(page, linesPerPage, orderBy, direction);
      Page<CategoriaDTO> listDto = list.map(obj -> new CategoriaDTO(obj));
    return ResponseEntity.ok().body(listDto);
  }

}