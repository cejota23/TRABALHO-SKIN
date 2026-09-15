CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE skin (
    id_skin INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    preco_promocional DECIMAL(10,2),
    tipo VARCHAR(50) NOT NULL,
    data_criacao DATE NOT NULL,
    raridade VARCHAR(50) NOT NULL,
    data_atualizacao DATE
);

CREATE TABLE transacoes (
    id_transacao INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    id_skin INT NOT NULL,
    pagamento VARCHAR(50) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    data_pagamento DATE NOT NULL,
    banco_utilizado VARCHAR(100) NOT NULL,

    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_skin) REFERENCES skin(id_skin)
);