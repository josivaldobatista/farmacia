
CREATE TABLE pagamento_com_boleto
(
    data_pagamento timestamp without time zone,
    data_vencimento timestamp without time zone,
    pedido_id integer NOT NULL,
    CONSTRAINT pagamento_com_boleto_pkey PRIMARY KEY (pedido_id),
    CONSTRAINT pagamento_com_boleto FOREIGN KEY (pedido_id)
        REFERENCES pagamento (pedido_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

INSERT INTO pagamento_com_boleto (data_pagamento, data_vencimento, pedido_id)
    VALUES (null, '2020-10-20 00:00:00', 2);