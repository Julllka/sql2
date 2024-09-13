create table if not exists singers (
singer_id serial primary key,
singer_name varchar(50) not null
);

create table if not exists ganres (
ganre_id serial primary key,
ganres_name varchar(50) not null
);

CREATE TABLE if not exists singer_ganres_interest (
singer_id INTEGER references singers(id),
ganre_id INTEGER references ganres(id),
constraint pk PRIMARY KEY (singer_id, ganre_id)
);

create table if not exists album_list (
album_id serial primary key,
album_name varchar(50) not null,
release_date DATE not NULL
);

create table if not exists album_singer_interest (
singer_id INTEGER references singers(id),
album_id INTEGER references album_list(id),
constraint pk PRIMARY KEY (singer_id, album_id)
);

create table if not exists collection (
collection_id serial primary key,
songs_collection varchar(50) not null,
release_year DATE not null
);

create table if not exists track_list (
track_id serial primary key,
collection_id INTEGER not null references track_list(id),
track_name varchar(50) not null,
duration INTEGER CHECK (duration>1) 
);

create table if not exists collection_track_interest (
collection_id INTEGER references collection(id),
track_id INTEGER references track_list(id),
constraint pk PRIMARY KEY (collection_id, track_id)
);



