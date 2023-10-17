SELECT* FROM {{ref ('Stg_restaurant_turnover')}}
LIMIT {{var('nb_rows_to_show')}}
