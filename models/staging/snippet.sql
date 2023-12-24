{{config(
    materialize='view'
)}}

select
    id,
    REPLACE(title, " - Topic","") AS title,
    DATE(publishedate) AS publishedate,
    TIME(publishedate) AS publisetime,
    COALESCE(country, "NotSpecified") AS country

from channelsnippet