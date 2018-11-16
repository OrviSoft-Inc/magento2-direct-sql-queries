SELECT cpet.*, p.sku FROM catalog_product_entity_text AS cpet 
INNER JOIN catalog_product_entity AS p ON p.entity_id = cpet.entity_id
WHERE cpet.attribute_id = 75
AND cpet.entity_id IN (
  SELECT ccp.product_id FROM catalog_category_product AS ccp WHERE ccp.category_id = 309
)