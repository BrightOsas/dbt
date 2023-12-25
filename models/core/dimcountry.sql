{{ config(
    materializeed = 'table'
) }}

SELECT
    id,
    value as country
from {{ ref('country')}}