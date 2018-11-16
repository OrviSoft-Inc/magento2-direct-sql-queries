SELECT COUNT(*) AS total FROM catalog_product_entity AS cpe 
INNER JOIN catalog_product_entity_int AS cpei ON cpei.`entity_id` = cpe.`entity_id`
INNER JOIN core_store AS cs ON cs.`store_id` = cpei.`store_id`
WHERE cpei.`attribute_id`=96 AND cpei.`value` =2
ORDER BY cs.name
#GROUP BY cpe.`entity_id`



SELECT cpe.*, cpei.`value` AS 'status' FROM catalog_product_entity AS cpe 
INNER JOIN catalog_product_entity_int AS cpei ON cpei.`entity_id` = cpe.`entity_id`
WHERE cpei.`attribute_id`=96 AND cpei.`value`=2
GROUP BY cpe.`entity_id`