.mode json
select albums.name as album_name, 
albums.release_date as release_date, 
avg(features.loudness) as average_loudness
from albums
inner join tracks on albums.id = tracks.album_id
inner join features on tracks.id = features.track_id
group by album_name
order by release_date;