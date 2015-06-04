json.array!(@cartadetalles) do |cartadetalle|
  json.extract! cartadetalle, :id, :estado, :cartacab_id, :menu_id
  json.url cartadetalle_url(cartadetalle, format: :json)
end
