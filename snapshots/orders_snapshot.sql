{% snapshot orders_snapshot %}

{{
    config(
      target_database='training_db',
      target_schema='jaffle_shop',
      unique_key='id',

      strategy='timestamp',
      updated_at='_ETL_LOADED_AT',
    )
}}

select * from {{ source( 'jaffle_shop','orders') }}

{% endsnapshot %}