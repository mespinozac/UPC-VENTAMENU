json.array!(@locals) do |local|
  json.extract! local, :id, :nombre, :direccion, :telefono, :celular, :ciudad_id
  json.url local_url(local, format: :json)
end
