
CREATE TABLE pedido
(
    id integer generated always as identity PRIMARY KEY,
    instante timestamp without time zone,
    cliente_id integer,
    endereco_de_entraga_id integer,
    CONSTRAINT pedido FOREIGN KEY (cliente_id)
        REFERENCES cliente (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT endereco FOREIGN KEY (endereco_de_entraga_id)
        REFERENCES endereco (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

INSERT INTO pedido (instante, cliente_id, endereco_de_entraga_id) 
    VALUES ('2020-07-20 10:23:54', 1, 1);

INSERT INTO pedido (instante, cliente_id, endereco_de_entraga_id) 
    VALUES ('2020-07-18 21:04:44', 1, 2);