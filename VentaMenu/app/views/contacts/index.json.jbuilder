json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :celphone, :mail, :message=text
  json.url contact_url(contact, format: :json)
end
