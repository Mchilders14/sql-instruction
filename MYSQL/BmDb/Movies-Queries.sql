-- using an alias using 'as' keyword
select mov.title, mov.year, mov.rating 
  from movie as mov;

-- using an alias, using NO 'as' keyword
select m.title, m.year, m.rating 
  from movie m;