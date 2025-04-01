{{ config(
    materialized='table'
) }}

with source as (

    select * from {{ source('source_tbl', 'raw_customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed
