json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :dni, :nombre, :apellidos, :celular, :correo, :empresa, :direccionEnvio
  json.url cliente_url(cliente, format: :json)
end
