{{ config(
    materialized = 'table'
)}}

with snippetdata as (
    select * from {{ ref('snippet')}}
),

statsata as (
    select * from {{ref('stats')}}
)

select
    sp.id,
    sp.title,
    sp.publishedate,
    st.views,
    st.subscribers,
    st.videos,
    sp.country

from snippetdata sp
full join statsata st on sp.id = st.id
