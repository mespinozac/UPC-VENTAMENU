json.array!(@tipoplatos) do |tipoplato|
  json.extract! tipoplato, :id, :nombre
  json.url tipoplato_url(tipoplato, format: :json)
end
