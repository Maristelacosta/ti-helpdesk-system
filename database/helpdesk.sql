CREATE DATABASE helpdesk;

USE helpdesk;

CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    perfil VARCHAR(50) NOT NULL
);

CREATE TABLE chamados (
    id_chamado INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT NOT NULL,
    prioridade VARCHAR(20),
    status VARCHAR(30) DEFAULT 'Aberto',
    data_abertura DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_usuario INT,

    FOREIGN KEY (id_usuario)
    REFERENCES usuarios(id_usuario)
);

CREATE TABLE comentarios (
    id_comentario INT PRIMARY KEY AUTO_INCREMENT,
    descricao TEXT NOT NULL,
    data_comentario DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_chamado INT,

    FOREIGN KEY (id_chamado)
    REFERENCES chamados(id_chamado)
);
