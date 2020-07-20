
CREATE TABLE pagamento_com_cartao
(
    numero_de_parcelas integer,
    pedido_id integer NOT NULL,
    CONSTRAINT pagamento_com_cartao_pkey PRIMARY KEY (pedido_id),
    CONSTRAINT pagamento_com_cartao FOREIGN KEY (pedido_id)
        REFERENCES pagamento (pedido_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

INSERT INTO pagamento_com_cartao (numero_de_parcelas, pedido_id)
    VALUES (6, 1);