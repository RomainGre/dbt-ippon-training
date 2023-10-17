{%set methods=dbt_utils.get_column_values(table=ref('base_orders'), column='payment_method')%}

select restaurant.name,

{% for method in methods %}
sum(case when
payment_method='{{method}}' then amount END) as {{method}}
{% if not loop.last %}, {% endif %}
{% endfor %}

from {{source("new_restaurants",'RESTAURANTS')}} as restaurant
inner join {{ref("base_orders")}} as orders
on orders.Restaurant_Identifier=restaurant.Identifier
group by 1 