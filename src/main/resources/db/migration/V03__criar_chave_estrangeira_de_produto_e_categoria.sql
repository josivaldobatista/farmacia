
CREATE TABLE produto_categoria
(
    produto_id integer NOT NULL,
    categoria_id integer NOT NULL,
    PRIMARY KEY (produto_id, categoria_id),
    FOREIGN KEY (produto_id) REFERENCES public.produto (id) MATCH SIMPLE,
    FOREIGN KEY (categoria_id) REFERENCES public.categoria (id) MATCH SIMPLE
  );

  INSERT INTO produto_categoria (produto_id, categoria_id) VALUES (1, 4);
  INSERT INTO produto_categoria (produto_id, categoria_id) VALUES (2, 4);
  INSERT INTO produto_categoria (produto_id, categoria_id) VALUES (3, 2);
  INSERT INTO produto_categoria (produto_id, categoria_id) VALUES (4, 1);