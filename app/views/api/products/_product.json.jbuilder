json.id product.id
json.name product.name
json.description product.description
json.alteration_information product.alteration_information
json.size product.size
json.color_one product.color_one
json.color_two product.color_two
json.brand product.brand
json.length product.length
json.condition product.condition
json.original_price product.original_price
json.selling_price product.selling_price
json.seller product.seller
json.image product.image
json.is_discounted product.is_discounted? if product.selling_price
json.tax product.tax if product.selling_price
json.total product.total if product.selling_price