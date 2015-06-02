json.array!(@ciudads) do |ciudad|
  json.extract! ciudad, :id, :nombre
  json.url ciudad_url(ciudad, format: :json)
end
