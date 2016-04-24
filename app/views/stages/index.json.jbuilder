json.array!(@stages) do |stage|
  json.extract! stage, :id, :stage_name, :stage_description, :stage_icon
  json.url stage_url(stage, format: :json)
end
