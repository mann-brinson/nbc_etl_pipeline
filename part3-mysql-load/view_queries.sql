#VIEW 1: torrent_full - shows all torrents, enriched with imdb title and n_keywords
CREATE OR REPLACE VIEW torrent_full AS
	WITH
		n_keywords (imdb_id, title, n_keywords) AS 
		(SELECT m.imdb_id, m.title, COUNT(mk.keyword_id) n_keywords
		FROM torrents.movie m
		JOIN torrents.movie_keyword mk on m.tmdb_id = mk.movie_id
		GROUP BY m.tmdb_id
		)
	SELECT t.id torr_id, t.name, t.rarbg_added, t.size, t.size_units, 
		t.n_seed, t.n_leech, t.rarbg_url, t.infohash, t.imdb_id, nk.title, nk.n_keywords
	FROM torrents.torrent t
	LEFT JOIN n_keywords nk on t.imdb_id = nk.imdb_id
	;

#Create materialized view
INSERT INTO torrent_full_mview
WITH
	n_keywords (imdb_id, title, n_keywords) AS 
	(SELECT m.imdb_id, m.title, COUNT(mk.keyword_id) n_keywords
	FROM torrents.movie m
	JOIN torrents.movie_keyword mk on m.tmdb_id = mk.movie_id
	GROUP BY m.tmdb_id
	)
SELECT t.id torr_id, t.name, t.rarbg_added, t.size, t.size_units, 
	t.n_seed, t.n_leech, t.rarbg_url, t.infohash, t.imdb_id, nk.title, nk.n_keywords
FROM torrents.torrent t
LEFT JOIN n_keywords nk on t.imdb_id = nk.imdb_id
;


#VIEW 2: newest_movies - search torrents based on how recent the movie was released
CREATE OR REPLACE VIEW torrent_new AS
SELECT torrent_id, rarbg_url, imdb_id, title, DATEDIFF(cur_date, release_date) age_days
FROM 
	(SELECT t.id torrent_id, t.rarbg_url, t.imdb_id, m.title, CURDATE() cur_date, m.release_date
	FROM torrents.torrent t 
	JOIN torrents.movie m on t.imdb_id = m.imdb_id) torr_dates
;

#Create materialized view
INSERT INTO torrent_new_mview
SELECT torrent_id, rarbg_url, imdb_id, title, DATEDIFF(cur_date, release_date) age_days
FROM 
	(SELECT t.id torrent_id, t.rarbg_url, t.imdb_id, m.title, CURDATE() cur_date, m.release_date
	FROM torrents.torrent t 
	JOIN torrents.movie m on t.imdb_id = m.imdb_id) torr_dates
;

#VIEW 3: torrent_keywords - count keywords among each torrect
CREATE OR REPLACE VIEW keyword_counts AS
SELECT mk.keyword_id, 
(SELECT keyword
FROM torrents.keyword k
WHERE k.id = mk.keyword_id) keyword,
COUNT(mk.keyword_id) count_torrents
FROM torrents.movie_keyword mk
GROUP BY keyword_id;

#Create materialized view
INSERT INTO keyword_counts_mview
SELECT mk.keyword_id, 
(SELECT keyword
FROM torrents.keyword k
WHERE k.id = mk.keyword_id) keyword,
COUNT(mk.keyword_id) count_torrents
FROM torrents.movie_keyword mk
GROUP BY keyword_id;


