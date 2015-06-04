json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellidos, :celular, :correo, :empresa, :direccionenvio
  json.url cliente_url(cliente, format: :json)
end
