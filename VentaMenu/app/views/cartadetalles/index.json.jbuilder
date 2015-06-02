json.array!(@cartadetalles) do |cartadetalle|
  json.extract! cartadetalle, :id, :estado, :carta_id
  json.url cartadetalle_url(cartadetalle, format: :json)
end
