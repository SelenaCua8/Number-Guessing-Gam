camper: /project$ psql --username=freecodecamp --dbname=postgres
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=> CREATE DATABASE number_guess;
CREATE DATABASE
postgres=> \c number_guess
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "number_guess" as user "freecodecamp".
number_guess=> create table users(user_id SERIAL PRIMARY KEY);
CREATE TABLE
number_guess=> \d users
number_guess=> ALTER TABLE users ADD COLUMN username VARCHAR(20) NOT NULL UNIQUE;
ALTER TABLE
number_guess=> create table games(game_id SERIAL PRIMARY KEY);
CREATE TABLE
number_guess=> ALTER TABLE games ADD COLUMN number_guesses INT NOT NULL;
ALTER TABLE
number_guess=> \d users
number_guess=> ALTER TABLE games ADD COLUMN user_id INT REFERENCES users(user_id);
ALTER TABLE
number_guess=> \d games
number_guess=> 
