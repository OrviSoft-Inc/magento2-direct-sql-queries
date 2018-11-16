SELECT p.`entity_id`, p.sku, cpott.* FROM catalog_product_entity AS p 
INNER JOIN catalog_product_option AS cpo ON cpo.`product_id` = p.`entity_id`
INNER JOIN catalog_product_option_title AS cpot ON cpot.`option_id` = cpo.`option_id`
INNER JOIN catalog_product_option_type_value AS cpotv ON cpotv.`option_id` = cpot.`option_id`
INNER JOIN catalog_product_option_type_title AS cpott ON cpotv.`option_type_id` = cpott.`option_type_title_id`
WHERE p.sku = ('0002321') AND cpott.title LIKE ('%Medium%')

UPDATE catalog_product_entity AS p 
INNER JOIN catalog_product_option AS cpo ON cpo.`product_id` = p.`entity_id`
INNER JOIN catalog_product_option_title AS cpot ON cpot.`option_id` = cpo.`option_id`
INNER JOIN catalog_product_option_type_value AS cpotv ON cpotv.`option_id` = cpot.`option_id`
INNER JOIN catalog_product_option_type_title AS cpott ON cpotv.`option_type_id` = cpott.`option_type_title_id`
INNER JOIN catalog_product_option_type_price AS cpotp ON cpotv.`option_type_id` = cpotp.`option_type_price_id`
SET cpotp.`price` = '5.0'
WHERE p.sku = ('0002321') AND cpott.title LIKE ('%Medium%'); 