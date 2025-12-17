select * from (
with bounds as (
    select
        min("DATE") as min_date,
        max("DATE") as max_date
    from {{ ref('l1_calendar') }}
)
SELECT * FROM BOUNDS
) as __preview_sbq__ limit 1000