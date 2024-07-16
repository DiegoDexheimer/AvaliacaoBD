-- 1) Exibe todos os Usuarios
SELECT * FROM Usuarios;

-- 2) Exibe todos os artistas de um gênero específico
SELECT * FROM Artistas WHERE genero = 'Rock';

-- 3) Exibe todas as músicas de um álbum específico
SELECT * FROM Musicas WHERE album_id = 1;

-- 4) Exibe todas as playlists de um usuário específico
SELECT * FROM Playlists WHERE usuario_id = 6;

-- 5) Exibe todas as avaliações de uma música específica
SELECT * FROM Avaliacoes WHERE musica_id = 1;

-- 6) Exibe todas as músicas, os albuns que as pertecem e seus artistas
SELECT Musicas.titulo AS musica, Albuns.titulo AS Album, Artistas.nome AS artista
FROM Musicas JOIN Albuns ON Musicas.album_id = Albuns.id 
JOIN Artistas ON Musicas.artista_id = Artistas.id;

-- 7) Exibe todas as músicas em uma playlist específica de um usuario
SELECT Playlists.nome AS playlist, Musicas.titulo AS musica
FROM PlaylistMusicas
JOIN Playlists ON PlaylistMusicas.playlist_id = Playlists.id
JOIN Musicas ON PlaylistMusicas.musica_id = Musicas.id 
WHERE Playlists.id = 6;

-- 8) Exibe todas as avaliações que um usuario faz sobre uma musica(nome da musica, nota, comentario e data)
SELECT Usuarios.nome AS usuario, Musicas.titulo AS musica, Avaliacoes.nota AS nota, Avaliacoes.comentario AS comentario, Avaliacoes.data_criacao AS data
FROM Avaliacoes
JOIN Usuarios ON Avaliacoes.usuario_id = Usuarios.id
JOIN Musicas ON Avaliacoes.musica_id = Musicas.id;

-- 9) Conta o numero de musicas em cada playlist
SELECT Playlists.nome, COUNT(PlaylistMusicas.musica_id) AS num_musicas
FROM Playlists
LEFT JOIN PlaylistMusicas ON Playlists.id = PlaylistMusicas.playlist_id
GROUP BY Playlists.id;