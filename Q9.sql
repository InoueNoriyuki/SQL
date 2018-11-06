SELECT 
	category_name
	,sum(item_price) AS total_price 
FROM 
	item 
INNER JOIN 
	item_category 
	ON 
		item_category.category_id = item.category_id 
GROUP BY 
	item_category.category_id
ORDER BY
	item_price DESC;