with customers as (
    select * from {{ ref('stg_customers')}}
),
orders as (
    select * from {{ ref('fct_orders')}}
),
employee as (
    select * from {{ ref('employee')}}
),
customer_orders as (
    select
        customer_id,
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders,
<<<<<<< HEAD
        sum(amount) as lifetime_value
=======
<<<<<<< HEAD
        sum(amount) as lifetime_value
=======
        --sum(amount) as lifetime_value
>>>>>>> 589b3885e17b373f27a554b9a0bc66564129c00e
>>>>>>> 8c6afde865741796b128b08bf7752636f9087e78
    from orders
    group by 1
),
final as (
    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        employee.email,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders,
        customer_orders.lifetime_value
    from customers
    join employee using (customer_id)
    left join customer_orders using (customer_id)
)

    
select * from final