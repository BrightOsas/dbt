{{ config(
    materialized='table'
)
}}

select * from youtubedb.public.channelsnippet limit 10