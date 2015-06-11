json.array!(@orders) do |order|
  json.extract! order, :id, :dateOrder, :status, :price, :customer_id, :menu_id
  json.url order_url(order, format: :json)
end
