.mode json
select albums.name as name, 
albums.artist_id, 
albums.release_date, 
artists.name as artist,
albums.image_url
from albums
inner join artists on albums.artist_id = artists.id
group by albums.name;