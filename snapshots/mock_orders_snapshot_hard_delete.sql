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

{% endsnapshot %}