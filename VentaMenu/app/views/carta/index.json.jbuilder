json.array!(@carta) do |cartum|
  json.extract! cartum, :id, :descripcion, :fecha, :estado, :precio
  json.url cartum_url(cartum, format: :json)
end
