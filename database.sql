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

INSERT INTO vendedores VALUES (
    "Melissa da Silva Rocha",
    1,
    "Foto14png",
    25.0,
    "RJ",
    "Atende a Grande Rio"
);

INSERT INTO vendedores VALUES (
    "Albert Varadi",
    0,
    "Foto15png",
    80.0,
    "SC",
    "Atende a Grande Florianópolis"
);

// mostrar todos os valores dentro da tabela vendedores
SELECT * FROM vendedores;

// Colocando o índice na tabela
ALTER TABLE vendedores ADD COLUMN codigo int FIRST;

// Alterando o índice da row com o nome da coluna
UPDATE vendedores SET codigo=1 WHERE nome="Gustavo Varadi";

UPDATE vendedores SET codigo=2 WHERE nome="Melissa da Silva Rocha";

// Deletando a coluna codigo
ALTER TABLE vendedores DROP COLUMN codigo;

// Adicionando o ID
ALTER TABLE vendedores ADD COLUMN codigo int AUTO_INCREMENT FIRST, ADD PRIMARY KEY(codigo);

INSERT INTO vendedores VALUES (
    0,
    "Giovanna Victoria Varadi",
    0,
    "Foto16png",
    19.0,
    "SP",
    "Atende a Grande Florida"
);

