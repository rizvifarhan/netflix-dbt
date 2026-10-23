{{
    config(
        materialized = "ephemeral"
    )
}}

with movie as (
    select * from {{ ref('dim_movies') }}
),
tag as (
    select * from {{ ref("dim_genome_tags")}}
),
score as (
    select * from {{ ref("fact_genome_scores")}}
)

select 
    m.movie_id,
    m.title,
    m.release_date,
    t.tag_id,
    t.tag_name,
    s.score
from movie m 
left join tag t on m.movie_id = t.movie_id
left join score s on m.movie_id = s.movie_id