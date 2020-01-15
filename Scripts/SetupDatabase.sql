CREATE ROLE librarian with PASSWORD 'yourStrongPassword' IN ROLE pg_read_server_files LOGIN;
CREATE DATABASE library with OWNER = librarian;