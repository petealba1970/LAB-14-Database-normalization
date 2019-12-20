Query 6: ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);
  Date.now()
  1576868084877

  This query will modify the data type of the bookshelf_id in the books table, setting it as a foreign key which references the primary key in the bookshelves table