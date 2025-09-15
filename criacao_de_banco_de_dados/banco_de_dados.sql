CREATE TABLE Alunos (
    ra INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT,
    curso VARCHAR(50)
);

-- Inserindo alguns registros
INSERT INTO Alunos (ra, nome, idade, curso) VALUES (1, 'João', 20, 'Sistemas');
INSERT INTO Alunos (ra, nome, idade, curso) VALUES (2, 'Maria', 19, 'Design');
INSERT INTO Alunos (ra, nome, idade, curso) VALUES (3, 'Pedro', 21, 'Administração');

-- Consultando todos os alunos
SELECT * FROM Alunos;