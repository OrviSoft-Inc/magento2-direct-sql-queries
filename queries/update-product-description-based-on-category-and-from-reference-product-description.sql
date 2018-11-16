UPDATE catalog_product_entity_text AS cpet 
INNER JOIN catalog_product_entity AS p ON p.entity_id = cpet.entity_id
SET cpet.value = (SELECT cpett.value FROM (SELECT * FROM catalog_product_entity_text) AS cpett WHERE cpett.value_id = 37245)
WHERE cpet.attribute_id = 75
AND cpet.entity_id IN (
  SELECT ccp.product_id FROM catalog_category_product AS ccp WHERE ccp.category_id = 309
)
AND cpet.value_id <> 37245