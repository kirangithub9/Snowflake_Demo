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

<<<<<<< HEAD
select * from {{ source('jaffle_shop', 'orders') }}
=======
select * from {{ source( 'jaffle_shop','orders') }}
>>>>>>> 532845fe153e9b54767f9404c3ec6dc2d12e441b

{% endsnapshot %}