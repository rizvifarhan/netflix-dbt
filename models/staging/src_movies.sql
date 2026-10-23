with raw_movie as (
    select * from MOVIELENS.RAW.RAW_MOVIES
)
select
    movieId as movie_id,
    title,
    genres
    from raw_movie