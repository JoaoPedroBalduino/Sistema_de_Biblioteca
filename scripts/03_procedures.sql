-- Questão 1 – Cadastrar novo usuário
CREATE OR REPLACE PROCEDURE cadastrar_usuario(p_nome VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO usuario (nome) VALUES (p_nome);
END;
$$;

-- Questão 2 – Registrar novo livro
CREATE OR REPLACE PROCEDURE cadastrar_livro(
    p_titulo VARCHAR,
    p_id_autor INT,
    p_ano_publicacao INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO livro (titulo, id_autor, ano_publicacao)
    VALUES (p_titulo, p_id_autor, p_ano_publicacao);
END;
$$;

-- Questão 3 – Registrar devolução
CREATE OR REPLACE PROCEDURE registrar_devolucao(
    p_id_emprestimo INT,
    p_data_devolucao DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE emprestimo
    SET data_devolucao = p_data_devolucao
    WHERE id = p_id_emprestimo;
END;
$$;

-- Questão 4 – Excluir usuário e seus empréstimos
CREATE OR REPLACE PROCEDURE excluir_usuario(p_id_usuario INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM emprestimo WHERE id_usuario = p_id_usuario;
    DELETE FROM usuario WHERE id = p_id_usuario;
END;
$$;
