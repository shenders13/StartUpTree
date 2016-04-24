json.array!(@incubators) do |incubator|
  json.extract! incubator, :id, :name
  json.url incubator_url(incubator, format: :json)
end
