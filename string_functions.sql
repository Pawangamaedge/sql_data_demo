use demo;

CREATE TABLE book_store (
    book_id INT NOT NULL PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    genre VARCHAR(50),
    publisher VARCHAR(100),
    price DECIMAL(10, 2)
);

INSERT INTO book_store (book_id, title, author, first_name, last_name, genre, publisher, price) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'F.', 'Scott Fitzgerald', 'Classic', 'Scribner', 10.99),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Harper', 'Lee', 'Classic', 'J.B. Lippincott & Co.', 7.99),
(3, '1984', 'George Orwell', 'George', 'Orwell', 'Dystopian', 'Secker & Warburg', 8.99),
(4, 'Pride and Prejudice', 'Jane Austen', 'Jane', 'Austen', 'Romance', 'T. Egerton', 9.49),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 'J.D.', 'Salinger', 'Classic', 'Little, Brown and Company', 6.99),
(6, 'The Hobbit', 'J.R.R. Tolkien', 'J.R.R.', 'Tolkien', 'Fantasy', 'George Allen & Unwin', 8.49),
(7, 'Fahrenheit 451', 'Ray Bradbury', 'Ray', 'Bradbury', 'Dystopian', 'Ballantine Books', 7.49),
(8, 'Moby Dick', 'Herman Melville', 'Herman', 'Melville', 'Adventure', 'Harper & Brothers', 11.99),
(9, 'War and Peace', 'Leo Tolstoy', 'Leo', 'Tolstoy', 'Historical', 'The Russian Messenger', 12.49),
(10, 'Jane Eyre', 'Charlotte Bronte', 'Charlotte', 'Bronte', 'Romance', 'Smith, Elder & Co.', 10.49),
(11, 'The Lord of the Rings', 'J.R.R. Tolkien', 'J.R.R.', 'Tolkien', 'Fantasy', 'George Allen & Unwin', 25.99),
(12, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 'J.K.', 'Rowling', 'Fantasy', 'Bloomsbury', 15.99),
(13, 'The Alchemist', 'Paulo Coelho', 'Paulo', 'Coelho', 'Philosophy', 'HarperOne', 14.99),
(14, 'The Road', 'Cormac McCarthy', 'Cormac', 'McCarthy', 'Post-Apocalyptic', 'Knopf', 13.99),
(15, 'Animal Farm', 'George Orwell', 'George', 'Orwell', 'Satire', 'Secker & Warburg', 6.99),
(16, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Fyodor', 'Dostoevsky', 'Psychological', 'The Russian Messenger', 10.99),
(17, 'Brave New World', 'Aldous Huxley', 'Aldous', 'Huxley', 'Dystopian', 'Chatto & Windus', 9.99),
(18, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Oscar', 'Wilde', 'Philosophy', 'Lippincott''s Monthly Magazine', 8.99),
(19, 'Dracula', 'Bram Stoker', 'Bram', 'Stoker', 'Gothic', 'Archibald Constable and Company', 7.49),
(20, 'A Tale of Two Cities', 'Charles Dickens', 'Charles', 'Dickens', 'Historical', 'Chapman & Hall', 6.49);

select * from book_store;

SELECT 
    book_id,
    title,
    CONCAT(title, ' written by-> ', author) AS title_with_author
FROM
    book_store
WHERE
    book_id BETWEEN 7 AND 15;


SELECT 
    book_id,
    title,
    CONCAT(title, ', written by-> ', author) AS title_with_author,
    LENGTH(CONCAT(title, ' written by-> ', author)) AS length_title_author
FROM
    book_store
WHERE
    book_id BETWEEN 7 AND 15;

select book_id, title, length(title) as title_length from book_store group by book_id order by rand() limit 10;

-- 1)
select * from book_store where (book_id % 2 = 0 and price > 10)  
and (select substring(title,0, 11) as short_title, concat(substring(title,1,11), '...') from book_store);

select * , substring(title,1,10), concat(substring(title,1,10),'...') as short_title from book_store
where book_id

SELECT * , 
       SUBSTRING(title, 1, 10) AS short_title,
       CONCAT(SUBSTRING(title, 1, 10), '...') AS full_short_title
FROM book_store
WHERE book_id % 2 = 0 
  AND price > 10;


select * from book_store where title ;


select * from book_store order by price desc limit 2 offset 1; 
select * from book_store order by price desc;

select * from book_store where price = (select max(price) from book_store);


select * from book_store;
select substring(title,1,5) as short_title from book_store;


select *, concat(substring(title, 1, 11), '...') as short_title from book_store where
title is not null and
price > 10;