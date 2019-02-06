-- PRACTICE JOINS

select * from invoice_line
	where unit_price > .99;

select invoice_date, total, first_name, last_name from invoice
	join customer on (invoice.customer_id = customer.customer_id);

select customer.first_name, customer.last_name, employee.first_name as rep_first_name, employee.last_name as rep_last_name from customer
	join employee on (customer.support_rep_id = employee.employee_id);

select title, artist.name as artist_name from album
	join artist on (album.artist_id = artist.artist_id);
 
 select track_id, name from playlist_track
  	join playlist on (playlist_track.playlist_id = playlist.playlist_id)
	where name = 'Music';

select name from track
    join playlist_track on (track.track_id = playlist_track.track_id)
    where playlist_id = 5;

select track.name as track_name, playlist.name as playlist_name from playlist_track
	join track on (playlist_track.track_id = track.track_id)
    join playlist on (playlist_track.playlist_id = playlist.playlist_id);

select track.name as track_name, album.title as album_title from track
  	join genre on (track.genre_id = genre.genre_id)
   	join album on (track.album_id = album.album_id)
  	where genre.name = 'Alternative & Punk';

--black diamond

select track.name as track_name, genre.name as genre_name, album.title as album_name, artist.name as artist_name from track
	join genre on (track.genre_id = genre.genre_id) --genre
    join album on (track.album_id = album.album_id) --album
    join artist on (album.artist_id = artist.artist_id) --artist
    join playlist_track on (track.track_id = playlist_track.track_id) --playlist_track
    join playlist on (playlist_track.playlist_id = playlist.playlist_id) --playlist
    where playlist.name = 'Music';