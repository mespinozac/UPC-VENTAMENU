json.array!(@menus) do |menu|
  json.extract! menu, :id, :nombre, :descripcion, :tipoplato_id
  json.url menu_url(menu, format: :json)
end
