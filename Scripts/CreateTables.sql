CREATE TABLE author
(
  id SERIAL PRIMARY KEY,
  firstName VARCHAR(50),
  lastName VARCHAR(50),
  age INT
);
CREATE TABLE library
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  open TIME,
  close TIME,
  city VARCHAR(50)
);
CREATE TABLE member
(
  id SERIAL PRIMARY KEY,
  firstName VARCHAR(50),
  lastName VARCHAR(50),
  expire DATE,
  age INT
);
CREATE TABLE book
(
  ISBN VARCHAR(50) PRIMARY KEY,
  id_author INT REFERENCES author(id),
  title VARCHAR(50),
  pages INT
);
CREATE TABLE copy
(
  id SERIAL PRIMARY KEY,
  id_book VARCHAR(50) REFERENCES book(ISBN),
  id_library INT REFERENCES library(id),
  price DECIMAL(12,2),
  state VARCHAR(50)
);
CREATE TABLE borrow
(
  id_copy INT REFERENCES copy(id),
  id_member INT REFERENCES member(id),
  taken DATE,
  returned DATE
);