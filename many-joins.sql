CREATE TABLE author (
  id serial PRIMARY KEY,
  name VARCHAR (50) NOT NULL,
  email VARCHAR (255) UNIQUE NOT NULL,
  phone VARCHAR (20)
);

CREATE TABLE book (
  id serial PRIMARY KEY,
  title VARCHAR (50) NOT NULL
);

CREATE TABLE author_book (
  id serial PRIMARY KEY,
  author_id integer REFERENCES author(id),
  book_id integer REFERENCES book(id)
);

-- Author data

INSERT INTO author (name, email, phone)
VALUES ('Ernest', 'ernest@gmail.com', '333-333-333');
 
INSERT INTO author (name, email, phone)
VALUES ('Mark', 'mark@gmail.com', '333-333-333');
 
INSERT INTO author (name, email, phone)
VALUES ('Albert', 'albert@gmail.com', '333-333-333');
 
INSERT INTO author (name, email, phone)
VALUES ('Patrick', 'patrick@gmail.com', '333-333-333');
 
INSERT INTO author (name, email, phone)
VALUES ('Aziz', 'aziz@gmail.com', '333-333-333');
 
INSERT INTO author (name, email, phone)
VALUES ('Eric', 'eric@gmail.com', '333-333-333');
 
-- Book data

INSERT INTO book (title)
VALUES ('The Sun Also Rises');
 
INSERT INTO book (title)
VALUES ('The Adventures of Tom Sawyer');
 
INSERT INTO book (title)
VALUES ('The Adventures of Huckleberry Finn');
 
INSERT INTO book (title)
VALUES ('Modern Romance');
 
INSERT INTO book (title)
VALUES ('The Name of the Wind');
 
INSERT INTO book (title)
VALUES ('The Stranger');

-- Author_Book data

INSERT INTO author_book (author_id, book_id)
VALUES (1, 1);
 
INSERT INTO author_book (author_id, book_id)
VALUES (2, 2);
 
INSERT INTO author_book (author_id, book_id)
VALUES (2, 3);
 
INSERT INTO author_book (author_id, book_id)
VALUES (3, 6);
 
INSERT INTO author_book (author_id, book_id)
VALUES (5, 4);
 
INSERT INTO author_book (author_id, book_id)
VALUES (6, 4);
 
INSERT INTO author_book (author_id, book_id)
VALUES (4, 5);
 