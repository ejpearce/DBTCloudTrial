with data_test as (
    select * from {{ ref('stg_customers') }}
)

select
first_name,
count(*) as count_names
from data_test
group by 1
having count_names > 1