{% snapshot mock_orders %}

{% set new_schema = {{ source('jaffle_shop') }} + '_snapshot' %}

{{
    config(
      target_database='training_db',
      target_schema=new_schema,
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source( 'jaffle_shop','mock_orders') }}

{% endsnapshot %}