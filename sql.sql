CREATE TABLE login (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL
);

CREATE TABLE books (
  id INT PRIMARY KEY,
  author VARCHAR(255),
  title VARCHAR(255),
  publication_date DATE,
  rating DECIMAL(3, 1)
);

CREATE TABLE book_borrowers(
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  book_id INT,
  lend_date DATE,
  return_date DATE,
  FOREIGN KEY (book_id) REFERENCES books(id)
);

CREATE TABLE book_borrowers_books (
  book_borrowers_id INT,
  book_id INT,
  FOREIGN KEY (book_borrowers_id) REFERENCES book_borrowers(id),
  FOREIGN KEY (book_id) REFERENCES books(id)
);


SELECT * FROM books WHERE title = 'Harry Potter';

SELECT * FROM books WHERE title LIKE '%potter%';



