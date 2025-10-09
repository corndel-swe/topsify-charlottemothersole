-- How many tracks are longer than 5 minutes?
-- .mode markdown
select count(id)
from tracks
where duration_ms > 300000;
