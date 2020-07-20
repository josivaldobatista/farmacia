CREATE TABLE item_pedido
(
    desconto double precision,
    preco double precision,
    quantidade integer,
    pedido_id integer NOT NULL,
    produto_id integer NOT NULL,
    CONSTRAINT item_pedido_pkey PRIMARY KEY (pedido_id, produto_id),
    CONSTRAINT pedido FOREIGN KEY (pedido_id)
        REFERENCES pedido (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT produto FOREIGN KEY (produto_id)
        REFERENCES produto (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

INSERT INTO item_pedido (desconto, preco, quantidade, pedido_id, produto_id)
    VALUES (0.00, 63.95, 1, 1, 1);

INSERT INTO item_pedido (desconto, preco, quantidade, pedido_id, produto_id)
    VALUES (0.00, 54.95, 2, 1, 3);

INSERT INTO item_pedido (desconto, preco, quantidade, pedido_id, produto_id)
    VALUES (100.00, 6.99, 1, 2, 2);