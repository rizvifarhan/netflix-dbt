{{ config(
    materialized = 'table'
)}}

with fct as (
    select * from {{ ref('fact_ratings') }}
),
seed_dates as (
    select * from {{ ref('seed_movie_release_dates') }}
)
select
    f.*,
    CASE 
        WHEN s.release_date is null THEN 'unknown'
        ELSE 'known'
    END as release_date_info
from fct f
left join seed_dates s
on f.movie_id = s.movie_id