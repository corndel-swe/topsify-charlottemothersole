.mode json
select artists.name as artist_name, count(case when tracks.explicit = 1 then tracks.explicit end) as explicit_track_count
from artists
inner join albums on artists.id = albums.artist_id
inner join tracks on albums.id = tracks.album_id
group by artist_name
order by explicit_track_count desc;