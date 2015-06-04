json.array!(@cartacabs) do |cartacab|
  json.extract! cartacab, :id, :descripcion, :fecha, :estado, :precio
  json.url cartacab_url(cartacab, format: :json)
end
