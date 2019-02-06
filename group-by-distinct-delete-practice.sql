-- GROUP BY PRACTICE

select count(*), genre.name from track
	join genre on (track.genre_id = genre.genre_id)
	group by genre.name;

select count(*), genre.name from track
	join genre on (track.genre_id = genre.genre_id)
  where genre.name = 'Pop' or genre.name = 'Rock'
	group by genre.name;
	
  select count(*), artist.name from album
  	join artist on (album.artist_id = artist.artist_id)
    group by artist.name;


-- USE DISTINCT PRACTICE

select distinct composer
	from track;

select distinct billing_postal_code
	from invoice;

select distinct company
	from customer;

-- DELETE ROWS PRACTICE


delete from practice_delete
	where type = 'bronze';
  
 delete from practice_delete
	where type = 'silver';
  
 delete from practice_delete
 	where value = 150;
  