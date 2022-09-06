// Criando banco de dados chamado sistema

CREATE DATABASE sistema;

// Entrando no banco de dados sistema
USE sistema;

// Criando tabela chamada vendedores

CREATE table vendedores (
    nome VARCHAR(50),
    ativo BOOLEAN,
    foto VARCHAR(25),
    comissao FLOAT(5,2),
    uf VARCHAR(2),
    obs TEXT
);

// Mostrando a tabela vendedores
DESCRIBE vendedores;

// Criando a tabela de produtos
CREATE table produtos (
    codigo VARCHAR(10),
    nome VARCHAR(50),
    ativo BOOLEAN,
    categoria INT(11),
    precoVenda FLOAT(6,2),
    foto VARCHAR(25),
    estoque INT(5),
    promocao INT(1),
    descricao TEXT
);

// Mostrando a tabela produtos
DESCRIBE produtos;

// Colocando valores na tabela vendedores

INSERT INTO vendedores VALUES (
    "Gustavo Varadi",
    1,
    "Foto12png",
    25,
    "SP",
    "Atende a grande são paulo (SP, Guarulhos e Osasco)!"
);

// mostrar todos os valores dentro da tabela vendedores
SELECT * FROM vendedores;
