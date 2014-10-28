json.array!(@halloweenpets) do |halloweenpet|
  json.extract! halloweenpet, :id, :name, :costume, :description, :picture
  json.url halloweenpet_url(halloweenpet, format: :json)
end
