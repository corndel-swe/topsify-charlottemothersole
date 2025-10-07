.mode json
select artists.name as artist_name, 
albums.name as album_name,
round(avg(features.danceability), 1) as average_danceability,
round(avg(features.acousticness), 1) as average_acousticness,
round(avg(features.liveness), 1) as average_liveness,
round(avg(features.energy), 1) as average_energy,
round(avg(features.speechiness), 1) as average_speechiness
from artists
inner join albums on artists.id = albums.artist_id
inner join tracks on albums.id = tracks.album_id
inner join features on tracks.id = features.track_id
group by albums.id;