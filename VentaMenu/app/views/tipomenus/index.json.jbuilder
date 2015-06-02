json.array!(@tipomenus) do |tipomenu|
  json.extract! tipomenu, :id, :nombre
  json.url tipomenu_url(tipomenu, format: :json)
end
