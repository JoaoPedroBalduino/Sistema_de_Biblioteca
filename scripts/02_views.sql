-- View Simples 1
CREATE OR REPLACE VIEW livros_com_autores AS
SELECT l.titulo AS titulo_livro, a.nome AS nome_autor
FROM livro l
JOIN autor a ON l.id_autor = a.id;

-- View Simples 2
CREATE OR REPLACE VIEW usuarios_com_emprestimos AS
SELECT u.nome AS nome_usuario, l.titulo AS titulo_livro
FROM emprestimo e
JOIN usuario u ON e.id_usuario = u.id
JOIN livro l ON e.id_livro = l.id;

-- View Média 1
CREATE OR REPLACE VIEW livros_mais_recentes AS
SELECT l.titulo AS titulo_livro, a.nome AS autor, l.ano_publicacao
FROM livro l
JOIN autor a ON l.id_autor = a.id
WHERE l.ano_publicacao > 1950;

-- View Média 2
CREATE OR REPLACE VIEW qtd_emprestimos_por_usuario AS
SELECT u.nome AS nome_usuario,
       COUNT(e.id) AS quantidade_emprestimos
FROM usuario u
LEFT JOIN emprestimo e ON u.id = e.id_usuario
GROUP BY u.nome;
