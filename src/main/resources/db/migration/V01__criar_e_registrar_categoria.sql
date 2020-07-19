
CREATE TABLE categoria
(
  id bigserial NOT NULL,
  nome character varying(255) COLLATE pg_catalog. "default",
  CONSTRAINT categoria_pkey PRIMARY KEY (id)
);

INSERT INTO categoria (nome) VALUES ('Beleza e Higiene');
INSERT INTO categoria (nome) VALUES ('Mamãe e Bebés');
INSERT INTO categoria (nome) VALUES ('Vitaminas e Suplementos');
INSERT INTO categoria (nome) VALUES ('Medicamentos');
INSERT INTO categoria (nome) VALUES ('Beleza');
INSERT INTO categoria (nome) VALUES ('Cuidados Diários');
INSERT INTO categoria (nome) VALUES ('Saúde');
