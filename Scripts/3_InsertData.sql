\c library;
-- Insert authors
COPY author(id,firstname,lastname,age) 
FROM '/tmp/Author.csv' DELIMITER ',' CSV HEADER;
-- Insert books
COPY book(isbn,id_author,title,pages) 
FROM '/tmp/Book.csv' DELIMITER ',' CSV HEADER;
-- Insert members
COPY member(id,firstname,lastname,expire,age) 
FROM '/tmp/Member.csv' DELIMITER ',' CSV HEADER;
-- Insert libraries
COPY library(id,name,open,close,city) 
FROM '/tmp/Library.csv' DELIMITER ',' CSV HEADER;
-- Insert copies
COPY copy(id,id_book,id_library,price,state) 
FROM '/tmp/Copy.csv' DELIMITER ',' CSV HEADER;
-- Insert borrows
COPY borrow(id_copy,id_member,taken,returned) 
FROM '/tmp/Borrow.csv' DELIMITER ',' CSV HEADER;