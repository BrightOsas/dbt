{{ config(
    materialized = 'table'
)}}

with snippetdata as (
    select * from {{ ref('snippet')}}
),

statsata as (
    select * from {{ref('stats')}}
),

dimcountry as (
    select * from {{ref('dimcountry')}}
)

select
    sp.id,
    sp.title,
    sp.publishedate,
    sp.publisetime,
    st.views,
    st.subscribers,
    st.videos,
    sp.country

from snippetdata sp
outer join statsata st on sp.id = st.id
