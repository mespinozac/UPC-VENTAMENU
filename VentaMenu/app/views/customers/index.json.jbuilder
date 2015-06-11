json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :lastname, :celphone, :mail, :address
  json.url customer_url(customer, format: :json)
end
