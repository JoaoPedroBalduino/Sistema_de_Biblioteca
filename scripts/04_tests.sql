-- Testes Procedures
CALL cadastrar_usuario('Lucas');
CALL cadastrar_livro('O Alienista', 1, 1882);
CALL registrar_devolucao(2, '2025-08-27');
CALL excluir_usuario(1);

-- Testes Views
SELECT * FROM livros_com_autores;
SELECT * FROM usuarios_com_emprestimos;
SELECT * FROM livros_mais_recentes;
SELECT * FROM qtd_emprestimos_por_usuario;
