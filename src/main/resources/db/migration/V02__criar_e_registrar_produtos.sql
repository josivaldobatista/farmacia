
CREATE TABLE produto
(
  id bigserial NOT NULL,
  nome character varying(255) COLLATE pg_catalog. "default",
  preco double precision,
  CONSTRAINT produto_pkey PRIMARY KEY (id)
);

INSERT INTO produto (nome, preco) VALUES ('Risedronato Sódico 150mg Genérico Althaia 1 Comprimido', 63.95);
INSERT INTO produto (nome, preco) VALUES ('Glifage XR 500mg Merck S/A 30 comprimidos', 6.99);
INSERT INTO produto (nome, preco) VALUES ('Kit Composto Lácteo Ninho Fases +1 800g 2 Unidades', 54.95);
INSERT INTO produto (nome, preco) VALUES ('Loção Corporal Hidratante Fisiogel Terapia de Hidratação 400ml', 103.90);
