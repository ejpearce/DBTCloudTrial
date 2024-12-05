select

id,
user_id,
order_date,
status

from {{ source('evan_shop', 'orders') }}