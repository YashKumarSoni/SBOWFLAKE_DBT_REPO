with cte (

    select * from {{ source('demo', 'bike') }}
)

SELECT * FROM cte 