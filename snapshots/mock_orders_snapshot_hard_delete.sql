<<<<<<< HEAD
{% snapshot mock_orders_snapshot_hard_delete %}

    {{
        config(
          target_schema='jaffle_shop',
          strategy='timestamp',
          unique_key='order_id',
          updated_at='updated_at',
          invalidate_hard_deletes=True,
        )
    }}

    select * from {{ source('jaffle_shop', 'mock_orders') }}

=======
{% snapshot mock_orders_snapshot_hard_delete %}

    {{
        config(
          target_schema='jaffle_shop',
          strategy='timestamp',
          unique_key='order_id',
          updated_at='updated_at',
          invalidate_hard_deletes=True,
        )
    }}

    select * from {{ source('jaffle_shop', 'mock_orders') }}

>>>>>>> 532845fe153e9b54767f9404c3ec6dc2d12e441b
{% endsnapshot %}