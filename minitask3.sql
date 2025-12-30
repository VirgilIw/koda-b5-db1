CREATE TABLE category (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE bookshelf (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    section VARCHAR(100) NOT NULL
);

CREATE TABLE officers (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE books (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    year INT,
    category_id INT REFERENCES category(id),
    bookshelf_id INT REFERENCES bookshelf(id)
);

CREATE TABLE borrows (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    borrow_date DATE NOT NULL,
    return_date DATE,
    book_id INT REFERENCES books(id)
);


INSERT INTO category (category_name) VALUES
('Fiksi'),
('Non-Fiksi'),
('Pendidikan'),
('Teknologi'),
('Sejarah'),
('Sains'),
('Bisnis'),
('Agama'),
('Kesehatan'),
('Sastra');

INSERT INTO bookshelf (section) VALUES
('Rak A1'),
('Rak A2'),
('Rak B1'),
('Rak B2'),
('Rak C1'),
('Rak C2'),
('Rak D1'),
('Rak D2'),
('Rak E1'),
('Rak E2');

INSERT INTO books (name, year, category_id, bookshelf_id) VALUES
('Laskar Pelangi', 2005, 1, 1),
('Fisika Dasar', 2018, 6, 2),
('Sejarah Indonesia', 2015, 5, 3),
('Pemrograman Java', 2021, 4, 4),
('Bisnis Startup', 2020, 7, 5),
('Kesehatan Masyarakat', 2019, 9, 6),
('Novel Senja', 2016, 1, 7),
('Dasar Teknologi Informasi', 2022, 4, 8),
('Sains untuk Semua', 2017, 6, 9),
('Sastra Nusantara', 2014, 10, 10);

-- 
INSERT INTO officers (name) VALUES 
('petugas-3'), 
('petugas-4'), 
('petugas-5'), 
('petugas-6'), 
('petugas-7'), 
('petugas-8'), 
('petugas-9'), 
('petugas-10');  


INSERT INTO borrows (borrow_date, return_date, book_id) VALUES
('2024-01-01', '2024-01-07', 11),
('2024-01-02', '2024-01-08', 15),
('2024-01-03', NULL,          18),
('2024-01-04', '2024-01-10', 15),
('2024-01-05', NULL,          12),
('2024-01-06', '2024-01-12', 19),
('2024-01-07', NULL,          14),
('2024-01-08', '2024-01-15', 16),
('2024-01-09', NULL,          13),
('2024-01-10', '2024-01-18', 20);
-- 

SELECT category_name,id
FROM category;

SELECT *
FROM borrows;

SELECT name,id
FROM officers;

SELECT *
FROM books;

SELECT *
FROM bookshelf;
-- 
-- DROP TABLE borrows
-- DROP TABLE books
-- DROP TABLE bookshelf
-- DROP TABLE category;
-- 