json.array!(@type_menus) do |type_menu|
  json.extract! type_menu, :id, :name
  json.url type_menu_url(type_menu, format: :json)
end
