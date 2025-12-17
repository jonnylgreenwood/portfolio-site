select * from (
with bounds as (
    select
        min("DATE") as min_date,
        max("DATE") as max_date
    from {{ ref('l1_calendar') }}
),

dates as (
    select
        dateadd(day, seq4(), b.min_date) as "DATE"
    from bounds b,
         TABLE(GENERATOR(rowcount => datediff(day, b.min_date, b.max_date) + 1))
)
SELECT * FROM DATES
) as __preview_sbq__ limit 1000