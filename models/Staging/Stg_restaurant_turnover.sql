select address,name,sum(amount) as turnover from {{source("new_restaurants",'RESTAURANTS')}} a
inner join {{ref("base_orders")}} b
On a.Identifier=b.Restaurant_Identifier
Group by name, address 
Order by sum(amount)
