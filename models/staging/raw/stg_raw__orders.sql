{{ config(materialized='table') }}

with source as (

    select *
    from {{ source('raw_p2', 'orders') }}

)

select *
from source
