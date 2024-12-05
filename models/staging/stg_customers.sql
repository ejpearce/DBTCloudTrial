    select
    id,
    first_name,
    last_name
    
from {{source('evan_shop','customers')}}