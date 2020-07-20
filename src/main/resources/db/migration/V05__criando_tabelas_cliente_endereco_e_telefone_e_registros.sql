
CREATE TABLE cliente
(
  id bigserial NOT NULL,
  nome character varying(255) COLLATE pg_catalog. "default",
  email character varying(255) COLLATE pg_catalog. "default",
  cpf_ou_cnpj character varying(255) COLLATE pg_catalog. "default",
  tipo integer,
  CONSTRAINT cliente_pkey PRIMARY KEY (id)
);

INSERT INTO cliente (id, nome, email, cpf_ou_cnpj, tipo) VALUES (1, 'Maria Silva', 'maria@gmail.com', '36378912377', 1);

CREATE TABLE telefone
(
  cliente_id integer NOT NULL,
  telefones character varying(255) COLLATE pg_catalog."default",
  CONSTRAINT telefone FOREIGN KEY (cliente_id)
    REFERENCES cliente (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
);

INSERT INTO telefone (cliente_id, telefones) VALUES (1, '1127363323');
INSERT INTO telefone (cliente_id, telefones) VALUES (1, '1193833398');

CREATE TABLE endereco
(
    id bigserial NOT NULL,
    bairro character varying(255) COLLATE pg_catalog."default",
    cep character varying(255) COLLATE pg_catalog."default",
    complemento character varying(255) COLLATE pg_catalog."default",
    logradouro character varying(255) COLLATE pg_catalog."default",
    numero character varying(255) COLLATE pg_catalog."default",
    cidade_id integer,
    cliente_id integer,
    CONSTRAINT endereco_pkey PRIMARY KEY (id),
    CONSTRAINT endereco FOREIGN KEY (cidade_id)
      REFERENCES cidade (id) MATCH SIMPLE
      ON UPDATE NO ACTION
      ON DELETE NO ACTION,
    CONSTRAINT cliente FOREIGN KEY (cliente_id)
      REFERENCES cliente (id) MATCH SIMPLE
      ON UPDATE NO ACTION
      ON DELETE NO ACTION
  );

  INSERT INTO endereco (id, bairro, cep, complemento, logradouro, numero, cidade_id, cliente_id) 
    VALUES (1, 'Rua Flores', '300', 'Apto. 303', 'Jardim', '38220834', 1, 1);

  INSERT INTO endereco (id, bairro, cep, complemento, logradouro, numero, cidade_id, cliente_id) 
    VALUES (2, 'Av. Matos', '105', 'Sala 800', 'Centro', '38777012', 2, 1);
