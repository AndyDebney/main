{{ config(materialized='table') }}

with source as (

    select *
    from {{ source('raw_p2', 'customers') }}

)

select *
from source
