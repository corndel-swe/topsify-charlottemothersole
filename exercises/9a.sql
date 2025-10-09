-- We're going to be adding a "genres" table to the database

-- It just needs two columns:
  -- "id" should be autoincrementing integer
  -- "name" is a unique string

-- Could you write the SQL to create the table?
DROP TABLE IF EXISTS genres;
create table genres (
  id integer primary key AUTOINCREMENT,
  name text unique
);
