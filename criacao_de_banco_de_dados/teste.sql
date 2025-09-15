Perfeito! Um código de banco de dados é uma ótima maneira de testar a funcionalidade de um projeto e a integração do Git. O padrão para interagir com bancos de dados é a linguagem SQL (Structured Query Language).

Aqui está um exemplo de código SQL que você pode usar para criar uma base de dados, uma tabela e inserir alguns dados.

Código SQL (database.sql)
Este código simula um sistema de gerenciamento de uma biblioteca, criando tabelas para livros e autores e inserindo algumas informações.

SQL

-- O comando DROP TABLE exclui a tabela se ela já existir, para evitar erros.
-- Use com cuidado, pois ele deleta todos os dados.
DROP TABLE IF EXISTS livros;
DROP TABLE IF EXISTS autores;

-- Criação da tabela "autores"
-- Cada autor tem um ID único, um nome e uma nacionalidade.
CREATE TABLE autores (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50)
);

-- Criação da tabela "livros"
-- Cada livro tem um ID único, título, ano de publicação e um ID de autor.
-- A coluna 'id_autor' é uma chave estrangeira que se conecta à tabela 'autores'.
CREATE TABLE livros (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    ano_publicacao INT,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

-- Inserindo dados na tabela "autores"
INSERT INTO autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileira'),
('J.K. Rowling', 'Britânica'),
('Stephen King', 'Americana');

-- Inserindo dados na tabela "livros"
-- Os valores de id_autor precisam corresponder aos IDs que foram gerados na tabela 'autores'.
INSERT INTO livros (titulo, ano_publicacao, id_autor) VALUES
('Memórias Póstumas de Brás Cubas', 1881, 1),
('Dom Casmurro', 1899, 1),
('Harry Potter e a Pedra Filosofal', 1997, 2),
('O Iluminado', 1977, 3),
('Carrie, a Estranha', 1974, 3);

-- Comando de seleção para verificar se os dados foram inseridos corretamente
SELECT
    L.titulo,
    L.ano_publicacao,
    A.nome AS nome_autor,
    A.nacionalidade
FROM
    livros L
JOIN
    autores A ON L.id_autor = A.id_autor
ORDER BY
    L.ano_publicacao;