
CREATE TABLE pagamento
(
    pedido_id integer PRIMARY KEY,
    estado integer,
    CONSTRAINT pagamento FOREIGN KEY (pedido_id)
        REFERENCES pedido (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

INSERT INTO pagamento (pedido_id, estado) VALUES (1, 2);
INSERT INTO pagamento (pedido_id, estado) VALUES (2, 1);