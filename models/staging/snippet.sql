{{config(
    materialize='view'
)}}

select
    id,
    REPLACE(title, ' - Topic','') AS title,
    DATE(publishedate) AS publishedate,
    COALESCE(country, 'NotSpecified') AS country

from {{source ('staging','channelsnippet')}}

limit 10