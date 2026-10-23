with src_movie as (
    select * from {{ ref('src_movies') }}
)
select
    movie_id,
    INITCAP(TRIM(title)) AS movie_title,
    split(genres, '|') AS movie_genres,
    genres
from src_movie