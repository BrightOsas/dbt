{{ config(
    materialize = 'view'
)}}

SELECT 
    id,
    CAST(viewcounts as numeric) as views,
    cast(subscribercounts as numeric) as subscribers,
    CAST(videocounts as numeric) as videos

FROM channelstat

{% if var ("is_test_run", default= true) %}

    limit 10

{% endif %}