json.array!(@type_foods) do |type_food|
  json.extract! type_food, :id, :name
  json.url type_food_url(type_food, format: :json)
end
