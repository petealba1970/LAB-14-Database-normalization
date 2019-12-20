Query 1: CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));
Date.now()
1576867244420
Creating the table bookshelf

Query 2: INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;
Date.now()
1576867650442
 subquery to retrieve unique bookshelf values from the books

 Query 3: ALTER TABLE books ADD COLUMN bookshelf_id INT;
Date.now()
 1576867766774
  add a column to the books table named bookshelf_id. 

  Query 4: UPDATE books SET bookshelf_id=shelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE books.bookshelf = shelf.name;
 Date.now()
 1576867880453
  prepare a connection between the two tables

  Query 5: ALTER TABLE books DROP COLUMN bookshelf;
  Date.now()
  1576867980315
  modify the books table by removing the column named bookshelf.

  Query 6: ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);
  Date.now()
  1576868084877

  This query will modify the data type of the bookshelf_id in the books table, setting it as a foreign key which references the primary key in the bookshelves table