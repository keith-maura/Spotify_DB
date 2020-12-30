DROP DATABASE IF EXISTS spotify;

CREATE DATABASE spotify;

USE spotify;

CREATE TABLE user (
user_id INT PRIMARY KEY,
user_name VARCHAR(50) NOT NULL
);

CREATE TABLE genre (
genre_id INT PRIMARY KEY,
genre_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE artist (
artist_id INT PRIMARY KEY,
artist_name VARCHAR(100) NOT NULL,
popularity INT
);

CREATE TABLE playlist (
playlist_id INT PRIMARY KEY,
playlist_name VARCHAR(50) NOT NULL,
user_id INT NOT NULL,
CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES user (user_id)
);

CREATE TABLE album (
album_id INT PRIMARY KEY,
album_name VARCHAR(100) NOT NULL,
artist_id INT NOT NULL,
popularity INT,
release_date DATE,
CONSTRAINT artist_id FOREIGN KEY (artist_id) REFERENCES ARTIST (artist_id)
);

CREATE TABLE song (
song_id INT PRIMARY KEY,
song_title VARCHAR(100) NOT NULL,
length_sec INT,
explicit TINYINT(1),
key_signature VARCHAR(2),
key_mode ENUM("major", "minor"),
tempo INT,
time_signature INT,
album_id INT NOT NULL,
popularity INT,
CONSTRAINT album_id FOREIGN KEY (album_id) REFERENCES album (album_id)
);

CREATE TABLE user_follows_user (
follower_id INT NOT NULL,
followee_id INT NOT NULL,
FOREIGN KEY (follower_id) REFERENCES user (user_id),
FOREIGN KEY (followee_id) REFERENCES user (user_id)
);

CREATE TABLE user_follows_artist (
user_id INT NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user (user_id),
FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
);

CREATE TABLE user_likes_song (
user_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user (user_id),
FOREIGN KEY (song_id) REFERENCES song (song_id)
);

CREATE TABLE user_likes_playlist (
user_id INT NOT NULL,
playlist_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user (user_id),
FOREIGN KEY (playlist_id) REFERENCES playlist (playlist_id)
);

CREATE TABLE artist_has_genre (
artist_id INT NOT NULL,
genre_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artist (artist_id),
FOREIGN KEY (genre_id) REFERENCES genre (genre_id)
);

CREATE TABLE playlist_has_song (
playlist_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (playlist_id) REFERENCES playlist (playlist_id),
FOREIGN KEY (song_id) REFERENCES song (song_id)
);


