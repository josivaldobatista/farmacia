
CREATE TABLE estado
(
    id integer generated always as identity PRIMARY KEY,
    nome character varying(255) COLLATE pg_catalog. "default"
  );

  INSERT INTO estado (nome) VALUES ('São Paulo');
  INSERT INTO estado (nome) VALUES ('Minas Gerais');
  INSERT INTO estado (nome) VALUES ('Bahia');
  INSERT INTO estado (nome) VALUES ('Paraiba');
  INSERT INTO estado (nome) VALUES ('Rio de Janeiro');

  CREATE TABLE cidade
  (
    id integer generated always as identity PRIMARY KEY,
    nome character varying(255) COLLATE pg_catalog. "default",
    estado_id integer,
    FOREIGN KEY (estado_id) REFERENCES estado (id) MATCH SIMPLE
  );

  INSERT INTO cidade (nome, estado_id) VALUES ('São Paulo', 1);
  INSERT INTO cidade (nome, estado_id) VALUES ('Campinas', 1);
  INSERT INTO cidade (nome, estado_id) VALUES ('Belo Horizonte', 2);
  INSERT INTO cidade (nome, estado_id) VALUES ('Uberlândia', 2);
  INSERT INTO cidade (nome, estado_id) VALUES ('Salvador', 3);
  INSERT INTO cidade (nome, estado_id) VALUES ('Feira de Santana', 3);
  INSERT INTO cidade (nome, estado_id) VALUES ('Campina Grande', 4);
  INSERT INTO cidade (nome, estado_id) VALUES ('João Pessoa', 4);
  INSERT INTO cidade (nome, estado_id) VALUES ('São Gonçalo', 5);
  INSERT INTO cidade (nome, estado_id) VALUES ('Duque de Caxias', 5);
