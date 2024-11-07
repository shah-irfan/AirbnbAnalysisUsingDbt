WITH fct_reviews as (
    SELECT * FROM {{ ref('fct_reviews')}}
),
dim_listings_cleansed as (
    SELECT * FROM {{ ref('dim_listings_cleansed')}}
)

SELECT
    *
FROM
    dim_listings_cleansed dl
    JOIN fct_reviews f
ON dl.listing_id = f.listing_id AND dl.created_at >= f.review_date