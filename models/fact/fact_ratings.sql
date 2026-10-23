{{
    config(
        materialized = "incremental",
        on_schema_change = "fail"
    )
}}

with rating as (
    select * from {{ ref('src_ratings') }} 
)

select 
    user_id,
    movie_id,
    rating,
    rating_timestamp
from rating
where rating_timestamp is not null

{% if is_incremental() %}
    AND rating_timestamp > (select max(rating_timestamp) from {{ this }})
{% endif %}