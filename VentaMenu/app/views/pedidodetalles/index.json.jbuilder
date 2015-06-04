json.array!(@pedidodetalles) do |pedidodetalle|
  json.extract! pedidodetalle, :id, :estado, :pedido_id, :menu_id
  json.url pedidodetalle_url(pedidodetalle, format: :json)
end
