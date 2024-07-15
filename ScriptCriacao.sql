CREATE DATABASE SpotifyDB;
USE SpotifyDB;

CREATE TABLE Usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    tipo_assinatura ENUM('Gratuita', 'Premium') NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Artistas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    genero VARCHAR(255),
    biografia TEXT
);

CREATE TABLE Albuns (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    data_lancamento DATE,
    artista_id INT,
    FOREIGN KEY (artista_id) REFERENCES Artistas(id) ON DELETE CASCADE
);

CREATE TABLE Musicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    duracao TIME,
    album_id INT,
    artista_id INT,
    FOREIGN KEY (album_id) REFERENCES Albuns(id) ON DELETE CASCADE,
    FOREIGN KEY (artista_id) REFERENCES Artistas(id) ON DELETE CASCADE
);

CREATE TABLE Playlists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    usuario_id INT,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id) ON DELETE CASCADE
);

CREATE TABLE PlaylistMusicas (
    playlist_id INT,
    musica_id INT,
    data_adicao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (playlist_id, musica_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlists(id) ON DELETE CASCADE,
    FOREIGN KEY (musica_id) REFERENCES Musicas(id) ON DELETE CASCADE
);

CREATE TABLE Avaliacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    musica_id INT,
    nota INT CHECK (nota >= 1 AND nota <= 5),
    comentario TEXT,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (musica_id) REFERENCES Musicas(id) ON DELETE CASCADE
);

CREATE TABLE Pagamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    quantia DECIMAL(10, 2) NOT NULL,
    data_pagamento DATE NOT NULL,
    tipo_assinatura ENUM('Gratuita', 'Premium') NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id) ON DELETE CASCADE
);
