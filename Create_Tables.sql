CREATE TABLE developer(
  id integer PRIMARY KEY,
  name VARCHAR(30),
  country VARCHAR(30)
);

CREATE TABLE genre(
  id integer PRIMARY KEY,
  name VARCHAR(30)
);

CREATE TABLE game(
  id integer PRIMARY KEY,
  title VARCHAR(30),
  release_year integer,
  developer_id integer REFERENCES developer(id),
  genre_id integer REFERENCES genre(id)
);

CREATE TABLE game_console(
  id integer PRIMARY KEY,
  name VARCHAR(50),
  release_year integer,
  units_sold integer
  );

CREATE TABLE game_console_games(
  game_id integer REFERENCES game(id),
  game_console_id integer REFERENCES game_console(id),
  PRIMARY KEY(game_id, game_console_id)
  );