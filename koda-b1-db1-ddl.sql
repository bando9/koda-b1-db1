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


-- INSERT INTO officer (name,nik,phone)
-- VALUES ('Aziz', '888092839283','+62891234890'),
-- ('Kurniawan', '999092839341','+62891233842');


-- INSERT INTO member (name,nim,address, email,phone)
-- VALUES
-- ('Lintang Prakoso', '092381','Semarang','lintangp12@tes.com','+1523492'),
-- ('Bondan Kurniawan', '092382','Bali','bondankurr@tes.com','+62528293'),
-- ('Rahanung Mahendra', '092383','Magelang','hendramahen@tes.com','+6289342923812');


-- ALTER TABLE bookshelf ALTER COLUMN id_book TYPE INT USING id_book::INTEGER;
-- ALTER TABLE bookshelf ADD CONSTRAINT fk_bookshelf_book FOREIGN KEY (id_book) REFERENCES book (id);
-- ALTER TABLE bookshelf ADD CONSTRAINT fk_bookshelf_categoy FOREIGN KEY (id_category) REFERENCES categories (id);

-- ALTER TABLE bookshelf drop CONSTRAINT fk_bookshelf_book;
-- ALTER TABLE bookshelf drop CONSTRAINT fk_bookshelf_category;

-- SELECT * FROM book;
-- INSERT INTO bookshelf(id_category,id_book)
-- VALUES (1,3),(6,4),(1,5),(1,6),(6,7),(4,8),(4,9),(9,10),(1,11),(2,12);

-- DELETE FROM bookshelf WHERE id in (3,4);
-- SELECT * FROM bookshelf;


-- ALTER TABLE transactions ALTER COLUMN id_officer TYPE INT USING id_officer::INTEGER;

-- ALTER TABLE transactions drop CONSTRAINT fk_transactions_book;
-- ALTER TABLE transactions drop CONSTRAINT fk_transactions_member;
-- ALTER TABLE transactions drop CONSTRAINT fk_transactions_officer;

-- ALTER TABLE transactions ADD CONSTRAINT fk_transactions_book FOREIGN KEY (id_book) REFERENCES book (id);
-- ALTER TABLE transactions ADD CONSTRAINT fk_transactions_member FOREIGN KEY (id_member) REFERENCES member (id);
-- ALTER TABLE transactions ADD CONSTRAINT fk_transactions_officer FOREIGN KEY (id_officer) REFERENCES officer (id);

--  INSERT INTO transactions(book_borrowing_date,book_return_date,fine,id_book,id_member,id_officer)
--  values ('19-10-2026', '29-11-2026', 2000,5,1,2),
--  ('19-10-2026', '30-10-2026', 0,12,1,2),
--  ('09-10-2026', '30-10-2026', 10000,10,1,2),
--  ('09-10-2026', '30-10-2026', 10000,8,2,2),
--  ('09-10-2026', '30-10-2026', 10000,6,3,1),
--  ('09-10-2026', '30-10-2026', 10000,4,1,1),
--  ('19-09-2026', '30-10-2026', 0,9,3,2);

--  select * from transactions;