select
   orders.order_id
from {{ ref('fct_orders') }} as orders
left join {{ ref('fct_order_items') }} as order_items
   on orders.order_id = order_items.order_id
where order_items.order_id is null
