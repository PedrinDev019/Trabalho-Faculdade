-- Dados de exemplo para a biblioteca
PRAGMA foreign_keys = ON;

-- Categories
INSERT INTO categories(name, description) VALUES
('Ficção', 'Livros de ficção literária'),
('Ciência', 'Livros de ciência e tecnologia'),
('História', 'Livros de história e biografias');

-- Authors
INSERT INTO authors(first_name, last_name, birth_date) VALUES
('George', 'Orwell', '1903-06-25'),
('Isaac', 'Asimov', '1920-01-02'),
('Yuval', 'Harari', '1976-02-24');

-- Books
INSERT INTO books(isbn, title, publisher, publish_year, pages, category_id, summary) VALUES
('9780451524935', '1984', 'Secker & Warburg', 1949, 328, 1, 'Distopia clássica.'),
('9780553382563', 'Foundation', 'Gnome Press', 1951, 255, 2, 'Saga de ficção científica.'),
('9780062316110', 'Sapiens', 'Harper', 2011, 443, 3, 'Uma breve história da humanidade.');

-- Relaciona autores aos livros
INSERT INTO book_authors(book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Copies (exemplares)
INSERT INTO copies(book_id, barcode, acquisition_date, status, location) VALUES
(1, 'BC10001', '2020-01-10', 'available', 'Prateleira A1'),
(1, 'BC10002', '2021-03-05', 'loaned', 'Prateleira A1'),
(2, 'BC20001', '2019-07-12', 'available', 'Prateleira B3'),
(3, 'BC30001', '2022-11-20', 'available', 'Prateleira C2');

-- Members
INSERT INTO members(first_name, last_name, email, phone, address, member_since) VALUES
('Ana', 'Silva', 'ana.silva@example.com', '+55 11 99999-0001', 'Rua A, 123', '2020-02-15'),
('Bruno', 'Costa', 'bruno.costa@example.com', '+55 11 99999-0002', 'Rua B, 45', '2021-06-30');

-- Loans (um exemplar emprestado)
INSERT INTO loans(copy_id, member_id, loan_date, due_date, return_date, fine) VALUES
(2, 1, '2025-11-01', '2025-11-15', NULL, 0);

-- Fim dos dados de exemplo
