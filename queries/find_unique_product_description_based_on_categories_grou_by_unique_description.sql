SELECT ccp.product_id FROM catalog_category_product AS ccp 
WHERE ccp.category_id = 309

SELECT ccet.entity_id, ccet.value FROM catalog_category_entity_varchar AS ccet 
INNER JOIN catalog_category_product AS ccp ON ccp.category_id = ccet.entity_id
WHERE ccet.attribute_id=45
GROUP BY ccet.entity_id

#select * from eav_attribute as ea where ea.attribute_code='description' 75

SELECT p.sku, ccp.category_id, ccev.value AS 'category_name', cpet.value AS 'category_description' FROM catalog_category_product AS ccp
INNER JOIN catalog_product_entity AS p ON p.entity_id = ccp.product_id
INNER JOIN catalog_category_entity_varchar AS ccev ON ccev.entity_id = ccp.category_id
INNER JOIN catalog_product_entity_text AS cpet ON cpet.entity_id = ccp.product_id
WHERE cpet.attribute_id = 75
AND ccev.attribute_id=45
AND ccp.category_id IN (
	SELECT ccet.entity_id FROM catalog_category_entity_varchar AS ccet 
	INNER JOIN catalog_category_product AS ccp ON ccp.category_id = ccet.entity_id
	WHERE ccet.attribute_id=45
	GROUP BY ccet.entity_id
)
GROUP BY ccev.value