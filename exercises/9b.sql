-- We'll also be making a junction table called "track_genres"

-- It will need two columns:
  -- track_id (this is a string)
  -- genre_id (this is an integer)

-- Of course, these need to be foreign keys to the relevant tables

-- Could you write the SQL to set up this junction table?
drop table if EXISTS track_genres;

create table track_genres (
  track_id text,
  genre_id integer,
  foreign key (track_id) REFERENCES tracks(id) on delete cascade,
  foreign key (genre_id) REFERENCES genre(id) on delete cascade
);
