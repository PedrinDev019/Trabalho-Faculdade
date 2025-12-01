CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE livro (
    id_livro SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100),
    categoria VARCHAR(50)
);

CREATE TABLE emprestimo (
    id_emprestimo SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL REFERENCES usuario(id_usuario),
    id_livro INT NOT NULL REFERENCES livro(id_livro),
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE
);
INSERT INTO usuario (nome, telefone) VALUES
('João Silva', '11 98822-5050'),
('Maria Souza', '11 92114-7000'),
('Pedro Almeida', '11 90311-0021'),
('Ana Beatriz', '11 95550-1298'),
('Carlos Santos', '11 97770-1123');

INSERT INTO livro (titulo, autor, categoria) VALUES
('Dom Casmurro', 'Machado de Assis', 'Romance'),
('1984', 'George Orwell', 'Distopia'),
('O Hobbit', 'J.R.R Tolkien', 'Fantasia'),
('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Romance'),
('Admirável Mundo Novo', 'Aldous Huxley', 'Distopia');

INSERT INTO emprestimo (id_usuario, id_livro, data_emprestimo, data_devolucao) VALUES
(1, 2, '2024-10-01', NULL),
(3, 3, '2024-10-05', NULL),
(2, 1, '2024-10-03', '2024-10-10'),
(4, 4, '2024-10-12', NULL);


