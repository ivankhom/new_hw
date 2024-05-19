create table if not exists singer(
id SERIAL primary key,
name VARCHAR not null 
);

create table if not exists song_list(
id serial primary key,
name VARCHAR not null,
issue_date DATE not null,
id_genre INTEDER references genre(id)
);

create table if not exists genre(
id SERIAL primary key,
name VARCHAR not null
);

create table if  not exists genre_singer(
id_singer INTEGER references singer(id),
id_genre INTEGER references genre(id)
);

create table if  not exists album(
id serial primary key,
name VARCHAR not null,
issue_date DATE not null,
song_list INTEGER references song(id)
);

create table if  not exists album_singer(
album_id INTEGER references album(id),
singer_id INTEGER references singer(id)
);

create table if not exists collection(
id serial primary key,
song_col INTEGER references song_list(id)
);