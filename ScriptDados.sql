INSERT INTO Usuarios (nome, email, senha, tipo_assinatura)
VALUES 
('João Silva', 'joao.silva@example.com', 'senha123', 'Gratuita'),
('Maria Souza', 'maria.souza@example.com', 'senha123', 'Premium'),
('Carlos Oliveira', 'carlos.oliveira@example.com', 'senha123', 'Gratuita'),
('Ana Santos', 'ana.santos@example.com', 'senha123', 'Premium'),
('Lucas Pereira', 'lucas.pereira@example.com', 'senha123', 'Gratuita');

INSERT INTO Artistas (nome, genero, biografia)
VALUES 
('The Beatles', 'Rock', 'Banda britânica de rock formada em Liverpool.'),
('Adele', 'Pop', 'Cantora e compositora britânica.'),
('Coldplay', 'Alternative Rock', 'Banda britânica de rock alternativo.'),
('Drake', 'Hip Hop', 'Rapper, cantor e compositor canadense.'),
('Taylor Swift', 'Country', 'Cantora e compositora americana.'),
('Kendrick Lamar', 'Hip Hop', 'Kendrick Lamar é um renomado rapper e compositor americano.'),
('NewJeans', 'Kpop', 'NewJeans é uma banda de rock alternativo conhecida por suas letras introspectivas.'),
('Myslovitz', 'Indie Rock', 'Myslovitz é uma banda de indie rock polonesa, famosa por suas melodias envolventes.');

INSERT INTO Albuns (titulo, data_lancamento, artista_id)
VALUES 
('Abbey Road', '1969-09-26', 1),
('25', '2015-11-20', 2),
('A Head Full of Dreams', '2015-12-04', 3),
('Scorpion', '2018-06-29', 4),
('Fearless', '2008-11-11', 5),
('Let It Be', '1970-05-08', 1),
('21', '2011-01-24', 2),
('Parachutes', '2000-07-10', 3),
('Views', '2016-04-29', 4),
('Red', '2012-10-22', 5),
('Help!', '1965-08-06', 1),
('19', '2008-01-28', 2),
('X&Y', '2005-06-06', 3),
('Take Care', '2011-11-15', 4),
('1989', '2014-10-27', 5),
('To Pimp a Butterfly', '2015-03-15', 6),
('Beyond the Blue', '2022-06-10', 7),
('Miłość w czasach popkultury', '2006-09-25', 8);

INSERT INTO Musicas (titulo, duracao, album_id, artista_id)
VALUES 
('Wesley\'s Theory', '00:04:47', 16, 6),
('King Kunta', '00:03:54', 16, 6),
('These Walls', '00:05:01', 16, 6),
('u', '00:04:28', 16, 6),
('Alright', '00:03:39', 16, 6),
('Dreams', '00:04:12', 17, 7),
('Echoes', '00:03:56',17, 7),
('Avalanche', '00:04:28', 17, 7),
('Starlight', '00:03:45', 17, 7),
('Beyond the Blue', '00:04:20', 17,7),
('Długość dźwięku samotności', '00:04:45', 18, 8),
('Sprzedawcy marzeń', '00:04:10', 18, 8),
('Sound of Solitude', '00:04:32', 18, 8),
('Chciałbym umrzeć z miłości', '00:03:55',18, 8),
('Nocnym pociągiem aż do końca świata', '00:05:12', 18, 8);

INSERT INTO Playlists (nome, usuario_id)
VALUES 
('Rock Clássico', 1),
('Pop Hits', 2),
('Músicas para Relaxar', 3),
('Hip Hop Vibes', 4),
('Country Favorites', 5);

INSERT INTO PlaylistMusicas (playlist_id, musica_id)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 3),
(2, 4),
(3, 1),
(4, 5),
(5, 2),
(1, 6),
(2, 7),
(3, 8);

INSERT INTO Avaliacoes (usuario_id, musica_id, nota, comentario)
VALUES 
(1, 1, 5, 'Excelente!'),
(2, 2, 4, 'Muito boa.'),
(3, 3, 3, 'Legal.'),
(4, 4, 5, 'Adorei.'),
(5, 5, 4, 'Ótima música.'),
(1, 6, 4, 'Clássico!'),
(2, 7, 5, 'Emocionante.'),
(3, 8, 5, 'Incrível.'),
(4, 9, 4, 'Muito boa.'),
(5, 10, 4, 'Adorei.'),
(1, 11, 5, 'Fantástica!'),
(2, 12, 5, 'Linda música.'),
(3, 13, 4, 'Muito boa.'),
(4, 14, 5, 'Ótima música.'),
(5, 15, 4, 'Muito boa.'),
(1, 16, 5, 'Excelente.'),
(2, 17, 5, 'Muito boa.'),
(3, 18, 4, 'Ótima.'),
(4, 19, 5, 'Incrível.'),
(5, 20, 4, 'Adorei.'),
(1, 21, 5, 'Linda música.'),
(2, 22, 5, 'Fantástica.'),
(3, 23, 4, 'Muito boa.'),
(4, 24, 5, 'Ótima música.'),
(5, 25, 4, 'Adorei.');

INSERT INTO Pagamentos (usuario_id, quantia, data_pagamento, tipo_assinatura)
VALUES 
(1, 0.00, '2024-01-01', 'Gratuita'),
(2, 29.90, '2024-02-01', 'Premium'),
(3, 0.00, '2024-01-01', 'Gratuita'),
(4, 29.90, '2024-02-01', 'Premium'),
(5, 0.00, '2024-01-01', 'Gratuita');
