json.array!(@messages) do |message|
  json.extract! message, :id, :send_user_id, :receiver_user_id, :content
  json.url message_url(message, format: :json)
end
