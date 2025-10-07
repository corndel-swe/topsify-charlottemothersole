-- Create a list of all artist names
-- Include a count of how many albums they have released
-- Order your results by artist name in ascending order
-- (You should group the artists by id, not by name)
-- .mode markdown
select artists.name, count(albums.id)
from artists
inner join albums on artists.id = albums.artist_id
group by artists.id
order by artists.name;
