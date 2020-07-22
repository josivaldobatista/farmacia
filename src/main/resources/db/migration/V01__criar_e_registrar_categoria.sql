
CREATE TABLE categoria
(
    id integer generated always as identity PRIMARY KEY,
    nome character varying(255) COLLATE pg_catalog. "default"
);

  INSERT INTO categoria (nome) VALUES ('Beleza e Higiene');
  INSERT INTO categoria (nome) VALUES ('Mamãe e Bebés');
  INSERT INTO categoria (nome) VALUES ('Vitaminas e Suplementos');
  INSERT INTO categoria (nome) VALUES ('Medicamentos');
  INSERT INTO categoria (nome) VALUES ('Beleza');
  INSERT INTO categoria (nome) VALUES ('Cuidados Diários');
  INSERT INTO categoria (nome) VALUES ('Saúde');
