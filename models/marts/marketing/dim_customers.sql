with 

customers as (

select *

from {{ref('stg_customers')}}
),

orders as (

select *

from {{ref('stg_orders')}}
)


select
customers.first_name || ' ' || customers.last_name ,
count(orders.id)
from customers left join orders on customers.id = orders.user_id
group by 1
