
CREATE TABLE pedido
(
    id integer NOT NULL,
    instante timestamp without time zone,
    cliente_id integer,
    endereco_de_entraga_id integer,
    CONSTRAINT pedido_pkey PRIMARY KEY (id),
    CONSTRAINT pedido FOREIGN KEY (cliente_id)
        REFERENCES cliente (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT endereco FOREIGN KEY (endereco_de_entraga_id)
        REFERENCES endereco (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

INSERT INTO pedido (id, instante, cliente_id, endereco_de_entraga_id) 
    VALUES (1, '2020-07-20 10:23:54', 1, 1);

INSERT INTO pedido (id, instante, cliente_id, endereco_de_entraga_id) 
    VALUES (2, '2020-07-18 21:04:44', 1, 2);