-- List the names of the 10 newest albums in the database

-- .mode markdown
select name from albums order by release_date desc limit 10;