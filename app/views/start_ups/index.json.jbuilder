json.array!(@start_ups) do |start_up|
  json.extract! start_up, :id, :name, :short_description, :long_description, :image, :video, :stage_id, :incubator_id, :location_id
  json.url start_up_url(start_up, format: :json)
end
