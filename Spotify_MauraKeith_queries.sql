use spotify;

-- Pull up relevant data for a given song
select song_title as 'Song Title', album_name as 'Album Title', release_date as 'Release Date', artist_name as 'Artist',
length_sec as 'Length (s)', explicit as 'Explicit', concat(key_signature, " ", key_mode) as 'Key Signature', tempo as 'Tempo',
time_signature as 'Time Signature', s.popularity as 'Song Popularity'
from song s join album al using (album_id)
join artist ar using (artist_id)
where song_title = 'Radio Ga Ga';

-- What is the most common genre?
select genre_name as 'Genre Name', count(genre_id) as 'Number of Songs'
from artist_has_genre join genre using (genre_id)
group by genre_id
order by count(genre_id) desc;

-- Which song is in the most playlists? For my music? For everyone's?
select song_title as 'Song Title', album_name as 'Album Title', artist_name as 'Artist', count(song_id) as 'Number of Playlists'
from song join playlist_has_song using (song_id)
join album using (album_id)
join artist using (artist_id)
join playlist using (playlist_id)
join user using (user_id)
where user_name = 'Maura Keith'
group by song_id
order by count(song_id) desc
limit 1;

select song_title as 'Song Title', album_name as 'Album Title', artist_name as 'Artist', count(song_id) as 'Number of Playlists'
from song join playlist_has_song using (song_id)
join album using (album_id)
join artist using (artist_id)
group by song_id
order by count(song_id) desc
limit 1;

-- Which songs have the same name as their album? How many are there? What percentage of songs are these?
select song_title as 'Song and Album Title', artist_name as 'Artist'
from album join song using (album_id)
join artist using (artist_id)
where song_title = album_name;

select count(song_id) as 'Number of Songs'
from album join song using (album_id)
where song_title = album_name;

select round(100 * count(song_id)/(select count(*) from song), 2) as 'Percentage of Songs Sharing Album Title'
from album join song using (album_id)
where song_title = album_name;

-- Which albums have the same name as their artist? How many are there? What percentage of albums are these?
select album_name as 'Album Title and Artist'
from album join artist using (artist_id)
where album_name = artist_name;

select count(album_id) as 'Number of Albums'
from album join artist using (artist_id)
where album_name = artist_name;

select round(100 * count(album_id)/(select count(*) from album), 2) as 'Percentage of Albums Named after Artist'
from album join artist using (artist_id)
where album_name = artist_name;

-- Which artists swear the most? Which artists don't swear at all? (only consider artists with at least 4 songs)
select artist_name as 'Artist', round(sum(explicit)/count(song_id)*100) as 'Percentage of Songs that are Explicit'
from song join album using (album_id)
join artist using (artist_id)
group by artist_id
having count(song_id) >= 4
order by sum(explicit)/count(song_id) desc;

select artist_name as 'Artist'
from song join album using (album_id)
join artist using (artist_id)
group by artist_id
having sum(explicit) = 0 and count(song_id) >= 4;

-- How many songs are there from each year? Which year is there the most songs from?
select year(release_date) as 'Year', count(song_id) as 'Songs'
from song join album using (album_id)
group by Year
order by Year desc;

select year(release_date) as 'Year', count(song_id) as 'Songs'
from song join album using (album_id)
group by Year
order by Songs desc
limit 1;

-- Is there a month that tends to have the most album releases?
select month(release_date) as 'Month', count(album_id) as 'Albums'
from song join album using (album_id)
where not(month(release_date) = 1 and day(release_date) = 1)
group by Month
order by Albums desc;

-- What is the popularity comparison of songs, albums, and artists?
select song_title as 'Song Title', s.popularity as 'Song Popularity',
	album_name as 'Album Title', al.popularity as 'Album Popularity',
    artist_name as 'Artist', ar.popularity as 'Artist Popularity'
from song s join album al using (album_id)
join artist ar using (artist_id)
order by s.popularity desc;

-- Are explicit or clean songs more popular, on average?
select explicit as 'Explicit?', round(avg(popularity), 2) as 'Average Popularity'
from song
group by explicit;

-- Who has the most generic music taste (i.e. who listens to the most popular songs)? Who has the most obscure taste?
select user_name as 'User', round(avg(popularity)) as 'Average Song Popularity'
from user join playlist using (user_id)
join playlist_has_song using (playlist_id)
join song using (song_id)
group by user_id
order by avg(popularity) desc;

-- What is the most common key signature? The major and minor distribution?
select concat(key_signature, " ", key_mode) as 'Key Signature', count(song_id) as 'Number of Songs'
from song
group by key_signature, key_mode
order by count(song_id) desc;

select key_mode as 'Key Mode', round (100 * count(song_id)/(select count(song_id) from song), 1) as 'Percentage of All Songs'
from song
group by key_mode;

-- What percentage of Duran Duran songs are major?
select key_mode as 'Key Mode',
	round (100 * count(song_id)/(select count(song_id) 
								from song join album using (album_id)
                                join artist using (artist_id)
                                where artist_name = 'Duran Duran'), 1)
    as 'Percentage of Songs'
	from song join album using (album_id)
    join artist using (artist_id)
    where artist_name = 'Duran Duran'
	group by key_mode;

-- What percentage of songs have a time signature of 4?
select round (count(time_signature)/(select count(song_id) from song)*100, 2) as 'Percentage of songs with Time Signature 4'
from song
where time_signature = 4;

-- Which artist has the most genres? What are they?
select artist_name as 'Artist', genre_name as 'Genre'
from artist join artist_has_genre using (artist_id)
join genre using (genre_id)
where artist_name = (select artist_name
					from artist join artist_has_genre using (artist_id)
					group by artist_id
					order by count(genre_id) desc
					limit 1);


