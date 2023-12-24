{{ config(
    materializeed = 'table'
) }}

SELECT
    *
from {{ ref('country')}}