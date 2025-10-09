.mode json
select tracks.name,
albums.name as album,
tracks.explicit,
tracks.preview_url,
tracks.disc_number,
tracks.track_number,
tracks.duration_ms
from tracks
inner join albums on tracks.album_id = albums.id
order by tracks.name;