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


SELECT 
    book_id, title, LENGTH(title) AS title_length
FROM
    book_store
GROUP BY book_id
ORDER BY RAND()
LIMIT 10;

-- 1)
-- select * from book_store where (book_id % 2 = 0 and price > 10)  
-- and (select substring(title,0, 11) as short_title, concat(substring(title,1,11), '...') from book_store);


SELECT * , 
       SUBSTRING(title, 1, 10) AS short_title,
       CONCAT(SUBSTRING(title, 1, 10), '...') AS full_short_title
FROM book_store
WHERE book_id % 2 = 0 
  AND price > 10;


SELECT 
    *
FROM
    book_store
WHERE
    title;


select * from book_store order by price desc limit 2 offset 1; 
select * from book_store order by price desc;
SELECT 
    *
FROM
    book_store
WHERE
    price = (SELECT 
            MAX(price)
        FROM
            book_store);


select * from book_store;
SELECT 
    SUBSTRING(title, 1, 5) AS short_title
FROM
    book_store;


SELECT 
    *, CONCAT(SUBSTRING(title, 1, 11), '...') AS short_title
FROM
    book_store
WHERE
    title IS NOT NULL AND price > 10;
    
    
SELECT 
    UPPER(title) AS upper_title
FROM
    book_store;
    
    
SELECT 
    LOWER(title) AS lower_title
FROM
    book_store;
    
    
SELECT 
    SUBSTRING(title, 1, 10) AS sub_string
FROM
    book_store;
    

SELECT * ,
    REPLACE(title, 'the_replaced', 'The') AS replaced_title
FROM
    book_store;
    
    
SELECT 
    *, TRIM(' ' FROM title) AS white_removed
FROM
    book_store;


SELECT TRIM('   Hello World   ') AS TrimmedString;
SELECT TRIM(BOTH 'x' FROM 'xxxHello Worldxxx') AS Result;
SELECT TRIM(LEADING 'x' FROM 'xxxHello Worldxxx') AS Result;
SELECT TRIM(TRAILING 'x' FROM 'xxxHello Worldxxx') AS Result;
SELECT CONCAT('!!!', 'Hello', '!!!') AS TrimmedString;
SELECT TRIM(BOTH '!' FROM CONCAT('!!!', 'Hello', '!!!')) AS TrimmedString;

select reverse(title) from book_store;
select reverse(upper(substring(title, 1, 10))) from book_store;
select reverse(upper(title)) from book_store;

select title, right(title, 6) as right_title from book_store;
select title, left(title, 7) as left_title from book_store;
select *, left(right(title, 6), 3) as right_left_char from book_store;

select title, char_length(title) as character_length from book_store;
select title, length(title) as character_length from book_store;

select title, instr(title, 'a') as position from book_store;

select title, lpad(title, 15, '-') as left_padded from book_store;
select title, rpad(title, 15, '*') as right_padded from book_store;
select title, rpad(substring(title, 1,5), 30, '*') as right_padded from book_store;

select concat(title, space(5), author) as title_space_author from book_store;

select title, ascii(left(title, 1)) as first_letter_ascii from book_store;

SELECT 
    UPPER(Title) AS Uppercase_Title,
    LOWER(Author) AS Lowercase_Author,
    CONCAT(Title, ' by ', Author) AS Full_Details,
    SUBSTRING(Title, 1, 10) AS Short_Title,
    LENGTH(Title) AS Title_Length
FROM
    book_store;
