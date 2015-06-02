json.array!(@carta) do |cartum|
  json.extract! cartum, :id, :descripcion, :fecha, :estado, :precio, :local_id, :tipomenu_id
  json.url cartum_url(cartum, format: :json)
end
