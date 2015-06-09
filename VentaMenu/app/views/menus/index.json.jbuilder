json.array!(@menus) do |menu|
  json.extract! menu, :id, :description, :dateMenu, :status, :price, :local_id
  json.url menu_url(menu, format: :json)
end
