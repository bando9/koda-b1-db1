-- SELECT * from users;

-- CREATE TABLE Book(
--     id SERIAL PRIMARY KEY,
--     title VARCHAR(100),
--     author VARCHAR(150),
--     publication_year VARCHAR(50),
--     publisher VARCHAR(150),
--     id_category VARCHAR(100)
-- );


-- CREATE TABLE officer(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(200),
--     NIK VARCHAR(100) UNIQUE NOT NULL,
--     phone VARCHAR(100)
-- );

-- CREATE TABLE member(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(200),
--     NIM VARCHAR(100) UNIQUE NOT NULL,
--     address VARCHAR(255),
--     email VARCHAR(100),
--     phone VARCHAR(100)
-- );

-- CREATE TABLE bookshelf(
--     id SERIAL PRIMARY KEY,
--     id_category VARCHAR(50),
--     id_book VARCHAR(50)
-- );

-- CREATE TABLE categories (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(150)
-- );

-- CREATE TABLE transactions(
--     id SERIAL PRIMARY KEY,
--     book_borrowing_date TIMESTAMP,
--     book_return_date TIMESTAMP,
--     fine int,
--     id_book VARCHAR(50),
--     id_member VARCHAR(50),
--     id_officer VARCHAR(50)
-- );



-- INSERT INTO categories (name) VALUES('Fiksi'), ('Novel'),('Komik'),('Ilmiah'),('Autobiografi'),('Pengembangan Diri'),('Referensi'),('Pelajaran'), ('Non Fiksi');

-- SELECT * FROM book;
-- ALTER TABLE book ALTER COLUMN id_category TYPE INT USING id_category::INTEGER;
-- ALTER TABLE book ADD CONSTRAINT fk_book_category FOREIGN KEY (id_category) REFERENCES book (id);


-- SELECT * FROM book;
-- insert into Book (title, author, publication_year,publisher,id_category)
-- values 
-- ('Laskar Pelangi', 'Andrea Hirata', '2005', 'Bentang Pustaka', 2),
-- ('Bumi', 'Tere Liye', '2014', 'Gramedia Pustaka Utama', 2),
-- ('Filosofi Teras', 'Henry Manampiring', '2018', 'Kompas', 1),
-- ('Atomic Habits', 'James Clear', '2018', 'Avery', 6),
-- ('Laut Bercerita', 'Leila S. Chudori', '2017', 'Kepustakaan Populer Gramedia', 1),
-- ('Cantik Itu Luka', 'Eka Kurniawan', '2002', 'Gramedia Pustaka Utama', 1),
-- ('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', '2014', 'Harper', 6),
-- ('Clean Code', 'Robert C. Martin', '2008', 'Prentice Hall', 4),
-- ('The Pragmatic Programmer', 'Andrew Hunt, David Thomas', '1999', 'Addison-Wesley', 4),
-- ('Psychology of Money', 'Morgan Housel', '2020', 'Harriman House', 9),
-- ('Sebuah Seni untuk Bersikap Bodo Amat', 'Mark Manson', '2016', 'Grasindo', 1),
-- ('Dilan 1990', 'Pidi Baiq', '2014', 'Pastel Books', 2);


