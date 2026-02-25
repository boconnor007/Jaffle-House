select
    order_id,
    sum(amount) as total_amount
from 
    {{ ref('ststg_stripe__paymentsg') }}
group by
    1
having 
    sum(amount) < 0