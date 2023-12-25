{{config(
    materialize='view'
)}}

select
    id,
    REPLACE(title, ' - Topic','') AS title,
    publishedate,
    COALESCE(country, 'NaN') AS country

from {{source ('staging','channelsnippet')}}