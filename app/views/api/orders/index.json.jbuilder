json.array! @orders.each do |order|
  json.id order.id
  json.product_id order.product_id
end
