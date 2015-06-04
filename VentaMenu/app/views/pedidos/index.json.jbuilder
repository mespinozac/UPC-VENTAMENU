json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :fecha, :horapedido, :horaentrega, :estado, :montopedido, :cartacab_id
  json.url pedido_url(pedido, format: :json)
end
