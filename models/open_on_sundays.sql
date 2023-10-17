select * from {{source("new_restaurants",'RESTAURANTS')}}
Where open_on_sunday::boolean