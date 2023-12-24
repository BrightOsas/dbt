{{config(
    materialize='view'
)}}

select
    id,
    REPLACE(title, " - Topic","") AS title,
    DATE(publishedate) AS publishedate,
    TIME(publishedate) AS publisetime,
    country

from channelsnippet

{% if var('is_test_run', default = true) %}
    limit 10
{% endif %}