# videogameDB

This is a simple DB of video games, game genres and consoles. The relationships of each table, including constraints (Primary Keys and Foreign Keys) can be found in the Entity Relationship Diagram included in this repo (ERD.pdf)

Here are some sample queries that can be run on the tables:

**--List of games by their title, release year, developer name and genre**


SELECT game.title, game.release_year, developer.name AS developer, genre.name AS genre

FROM game, developer, genre

WHERE game.developer_id = developer.id

AND game.genre_id = genre.id;

**--List of games and console they released on. Includes games that came out for multiple consoles.**


SELECT game.title, game.release_year, game_console.name AS Console

FROM game, game_console, game_console_games

WHERE game.id = game_console_games.game_id

AND game_console.id = game_console_games.game_console_id;

**--List of game consoles sorted by most units sold**


SELECT game_console.name AS console_name, game_console.release_year, game_console.units_sold

FROM game_console

ORDER BY game_console.units_sold DESC
