json.array!(@menu_details) do |menu_detail|
  json.extract! menu_detail, :id, :status, :menu_id, :food_id, :typeFood_id
  json.url menu_detail_url(menu_detail, format: :json)
end
