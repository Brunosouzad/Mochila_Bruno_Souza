-- BRUNO DOS SANTOS SOUZA

CREATE SCHEMA PIZZARIADH;
USE PIZZARIADH;

CREATE TABLE CATEGORIA(
ID_CATEGORIA INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
NOME VARCHAR(100)
);

INSERT INTO CATEGORIA(NOME)
VALUES('PIZZA'), ('BEBIDA'), ('PORÇÕES');
SELECT * FROM CATEGORIA;

CREATE TABLE CARDAPIO(
ID_PRODUTO INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
NOME VARCHAR(100),
ID_CATEGORIA INT NOT NULL,
DESCRICAO TEXT,
URL_IMAGEM VARCHAR(255),
VALOR_BASE DECIMAL(10,2),
CONSTRAINT FK_CARDAPIO FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIA(ID_CATEGORIA)
);

INSERT INTO CARDAPIO(NOME,ID_CATEGORIA,DESCRICAO,VALOR_BASE)
VALUES
('PIZZA DE MUSSARELA','1','Deliciosa Pizza recheada de queijo Mussarela','25.50'),
('PIZZA PORTUGUESA','1','Deliciosa Pizza recheada de queijo, ovo, calabresa, tomate e cebola','25.50'),
('COCA COLA LATA', '2', 'Coca cola em lata 300ml', '5.00'),
('PORÇÃO DE FRITAS', '3', 'Porção de batata frita, acompanhada de queijo', '18.00'),
('PORÇÃO DE FRITAS', '3', 'Porção de batata frita, acompanhada de queijo', '18.00');
SELECT * FROM  CARDAPIO;

UPDATE CARDAPIO
SET URL_IMAGEM = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpizzadimari.com.br%2Fproduto%2Fpizza-mussarela%2F&psig=AOvVaw0NSzxAGaf0OhXgg8eiUfFI&ust=1667863437631000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCPDGstDZmvsCFQAAAAAdAAAAABAJ'
WHERE ID_PRODUTO = 1;

UPDATE CARDAPIO
SET URL_IMAGEM = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpizzariameurancho.com.br%2Fcardapio%2Fpizza-portuguesa%2F&psig=AOvVaw0eDA1DXL-7zPBRIidurko4&ust=1667863694363000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOiFl8vamvsCFQAAAAAdAAAAABAE'
WHERE ID_PRODUTO = 2;

UPDATE CARDAPIO
SET URL_IMAGEM = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bistek.com.br%2Frefrigerante-350ml-lata-coca-cola.html&psig=AOvVaw1moYpFXvOuvoVN_nhw0uit&ust=1667863718950000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCMC_9dXamvsCFQAAAAAdAAAAABAE'
WHERE ID_PRODUTO = 3;

UPDATE CARDAPIO
SET URL_IMAGEM = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcardapioseguro.com.br%2Fcasa-da-mae-bar%2Fporcoes%2Fporo-batata-frita-bacon-queijo&psig=AOvVaw1sfkHUc-y_vNJiGIvFyPcB&ust=1667863759450000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOiIuenamvsCFQAAAAAdAAAAABAE'
WHERE ID_PRODUTO = 4;

UPDATE CARDAPIO
SET URL_IMAGEM = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcardapioseguro.com.br%2Fcasa-da-mae-bar%2Fporcoes%2Fporo-batata-frita-bacon-queijo&psig=AOvVaw1sfkHUc-y_vNJiGIvFyPcB&ust=1667863759450000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOiIuenamvsCFQAAAAAdAAAAABAE'
WHERE ID_PRODUTO = 5;

DELETE FROM CARDAPIO WHERE ID_PRODUTO = 5;
SELECT * FROM  CARDAPIO;













